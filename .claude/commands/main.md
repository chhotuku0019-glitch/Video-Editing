---
description: Edit Main Part N (usage /main 1, /main 2, /main N) in 16:9
argument-hint: <section number> [extra instructions]
---
Use the skill `.claude/skills/zero-code-editing/SKILL.md` and its supporting files.
Arguments: $ARGUMENTS
The first token is the section number N (any positive integer). If it is missing or not a number, ask for it. Everything after it is extra instructions.
Task: edit MAIN PART N, 16:9, 1920x1080. Look for N-related files in `input/` (e.g. main1, main_2, part3). If `output/intro/style_bible.md` exists, follow it exactly for palette, fonts, transitions and sound approach; otherwise create it. Continue the SFX log from earlier parts so sounds do not repeat across parts. Save to `output/main-N/`. Follow the full workflow and run the quality gate.
