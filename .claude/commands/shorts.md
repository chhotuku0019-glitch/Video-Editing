---
description: Make a professional YouTube Short (9:16, 1080x1920) from an uploaded video
argument-hint: [optional instructions, target length, topic]
---
Use the skill `.claude/skills/zero-code-editing/SKILL.md` and read `shorts-workflow.md` in the same folder.
Extra user instructions: $ARGUMENTS
Task: create ONE vertical Short, 9:16, 1080x1920, from the video in `input/`. Do NOT use the long-form 16:9 workflow. Follow the Shorts workflow: candidates first if several good segments, strong hook, smart vertical framing (no blind center crop), selective captions in safe zones, balanced non-repeating sound, clean ending. Save to `output/shorts/<short-name>/`. Run the quality gate with `qc_check.sh ... vertical`.
