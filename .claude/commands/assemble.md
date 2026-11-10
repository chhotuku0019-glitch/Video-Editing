---
description: Assemble intro, main parts and outro into one final 16:9 video
---
Use the skill `.claude/skills/zero-code-editing/SKILL.md` and its supporting files.
Extra user instructions: $ARGUMENTS
Task: find finished parts in `output/intro/`, `output/main-*/` (sort numerically: main-1, main-2, ..., main-10), and `output/last/`. List what you found and what is missing; if any part is missing, ask before continuing. Verify each part is 1920x1080 and matching fps/audio sample rate; re-encode to match if needed. Join in order: intro, main-1..N, last. Smooth audio at joins (short fades or crossfade, no clicks), check loudness consistency between parts (normalize to about -14 LUFS), check that SFX are not repeated across joins. Do not change content. Save to `output/final/final_video.mp4` plus manifest, notes and `render.sh`. Run the quality gate on the full file.
