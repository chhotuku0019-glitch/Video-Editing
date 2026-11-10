---
description: Edit the video Introduction (16:9, 1920x1080)
---
Use the skill `.claude/skills/zero-code-editing/SKILL.md` and its supporting files.
Task: edit the INTRO of a long-form video. Format 16:9, 1920x1080.
Extra user instructions: $ARGUMENTS
Goals: a strong hook in the first seconds, state the video's promise, set the visual identity (palette, fonts) that all later parts will reuse. Write the identity to `output/intro/style_bible.md` so /main and /last stay consistent.
Inputs: files in `input/` (look for intro-related video, voiceover, script) plus references. Follow the full workflow and outputs in the skill. Save to `output/intro/`. Run the quality gate.
