#!/usr/bin/env bash
echo "== ZERO CODE environment check =="
echo "Arch: $(uname -m)"; echo "OS: $(uname -sr)"
for t in ffmpeg ffprobe python3 fc-list sox; do
  if command -v $t >/dev/null 2>&1; then echo "OK   $t"; else echo "MISSING $t"; fi
done
python3 - <<'PY' 2>/dev/null || echo "python3 modules: check failed"
for m in ("PIL","numpy","matplotlib"):
    try:
        __import__(m); print("OK   python module", m)
    except Exception: print("MISSING python module", m)
PY
echo "Free disk here:"; df -h . | tail -1
command -v fc-list >/dev/null && { echo "Devanagari fonts:"; fc-list :lang=hi family | sort -u | head; }
echo "Install hints: Termux: pkg install ffmpeg python fontconfig ; proot Ubuntu: apt install ffmpeg python3-pip fontconfig fonts-noto"
