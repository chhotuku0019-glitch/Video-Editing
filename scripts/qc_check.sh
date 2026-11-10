#!/usr/bin/env bash
# usage: qc_check.sh file.mp4 landscape|vertical
f="$1"; mode="${2:-landscape}"
[ -f "$f" ] || { echo "FAIL file not found"; exit 1; }
command -v ffprobe >/dev/null || { echo "ffprobe missing: cannot check"; exit 2; }
h=$(ffprobe -v error -select_streams v:0 -show_entries stream=height -of csv=p=0 "$f" | head -1)
w=$(ffprobe -v error -select_streams v:0 -show_entries stream=width -of csv=p=0 "$f" | head -1)
d=$(ffprobe -v error -show_entries format=duration -of csv=p=0 "$f")
vc=$(ffprobe -v error -select_streams v:0 -show_entries stream=codec_name -of csv=p=0 "$f")
ac=$(ffprobe -v error -select_streams a:0 -show_entries stream=codec_name -of csv=p=0 "$f")
echo "Resolution: ${w}x${h}  Duration: ${d}s  Video: $vc  Audio: ${ac:-NONE}"
exp="1920x1080"; [ "$mode" = vertical ] && exp="1080x1920"
[ "${w}x${h}" = "$exp" ] && echo "PASS resolution/aspect ($exp)" || echo "FAIL resolution: expected $exp"
[ -n "$ac" ] && echo "PASS audio stream present" || echo "FAIL no audio stream"
ffmpeg -v error -i "$f" -f null - 2>&1 | head -5 | sed 's/^/DECODE: /'; echo "Decode test finished (no DECODE lines above = clean)"
command -v ffmpeg >/dev/null && ffmpeg -nostats -i "$f" -af ebur128=peak=true -f null - 2>&1 | grep -E "I:|Peak:" | tail -2
