# Reference Guide
Folders: `references/images/` (png, jpg, jpeg, webp) and `references/videos/` (mp4, mov).

## How to study a reference video (you cannot "watch" it; do this)
1. `ffprobe` for duration/fps/resolution.
2. Detect cuts: `ffmpeg -i ref.mp4 -vf "select='gt(scene,0.3)',showinfo" -f null - 2>&1 | grep pts_time` → average shot length, pacing curve.
3. Extract frames: 1 per second plus a frame at each cut: `ffmpeg -i ref.mp4 -vf fps=1 frames/%04d.png`; view them as images.
4. Extract audio levels/loudness (`ffmpeg ... ebur128`) to learn music vs voice balance.
5. Write `references/_analysis/<name>.md` recording: palette (hex values), fonts/weights/case/tracking, text placement and animation style, transitions used and how often, camera moves, graphic language (lines, shapes, grain, vignette), grading, SFX density, pacing (avg shot length).
## Using it
Take the design language, not the content. Build original layouts, wording, graphics. If references conflict, ask the user which wins. If the user asks to match a reference exactly, match the style, not the copyrighted material.
## Reference images
Screenshots, typography, graphics. Sample colors with Pillow, identify nearest font families available on the system (`fc-list`), note layout grids.
