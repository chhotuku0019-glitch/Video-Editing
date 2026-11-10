# ZERO CODE — AI Video Editing Skill Package (for Claude Code)

यह package **Claude Code** के लिए है। सामान्य Claude chat app (claude.ai / Android app) में ये slash commands native रूप से नहीं चलते।

## Commands
| Command | काम |
|---|---|
| /intro | Intro edit (16:9, 1920x1080), साथ में style bible बनाता है |
| /main N | Main Part N edit (/main 1, /main 2 ...) |
| /last | Outro / Ending edit |
| /assemble | intro + main parts + last जोड़कर final video |
| /shorts | 9:16, 1080x1920 YouTube Short (अलग workflow) |

## Folders
- `.claude/commands/` : हर command की अलग file
- `.claude/skills/zero-code-editing/` : master skill + guides + checklist
- `references/images/`, `references/videos/` : आपके reference files
- `input/` : video, voiceover, script  |  `output/` : results
- `scripts/check_env.sh`, `scripts/qc_check.sh` : environment और quality check

## Setup (Android, Termux)
1. Termux को F-Droid या GitHub से install करें (Play Store version नहीं)।
2. Claude Code install करें (Termux + proot Ubuntu method; community guides देखें, आपकी device aarch64 होनी चाहिए, ~5 GB free)।
3. Ubuntu/Termux में: `pkg install ffmpeg python fontconfig` (Ubuntu में `apt install ffmpeg python3-pip fontconfig fonts-noto`)।
4. ZIP को unzip करें: `unzip zero-code-editor.zip && cd zero-code-editor`
5. `bash scripts/check_env.sh` चलाएँ।
6. Files डालें: video/voiceover/script → `input/`, references → `references/...`
7. `claude` चलाएँ, फिर `/intro`, `/main 1`, ... `/assemble`.

## दूसरे project में use करना
`.claude/` और `scripts/` folders तथा `CLAUDE.md` कॉपी करें। Account-wide के लिए commands/skill को `~/.claude/commands/` और `~/.claude/skills/` में रखें।

## ध्यान रखें
- Phone पर भारी render धीमा होगा; पहले छोटा preview बनवाएँ।
- AI सिर्फ वही दावा करेगा जो उसने सच में render/check किया हो।
- Native CapCut/Premiere project नहीं बनता; सिर्फ MP4 + manifest + assets + notes + render.sh।
