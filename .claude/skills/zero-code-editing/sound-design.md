# Sound Design
- Keep an SFX log (`editing_notes.md`): timestamp, file, purpose. Before adding an SFX, check the log.
- Never reuse the same SFX on consecutive uses; do not use one file more than about 2 times per 3 minutes unless intentionally a motif. Prefer different variants/pitch.
- Not every transition gets a sound. Many cuts need none.
- Palette: cinematic impacts (rare, for big reveals), subtle whooshes (for fast motion only), ambience beds, room tone, risers, UI ticks for text pops, natural audio from source.
- Music: ducked under voice (~ -18 to -22 LUFS music vs voice near -14 to -16 LUFS integrated; final master about -14 LUFS, true peak ≤ -1 dBTP). Use sidechain/ducking so narration is always clear.
- Silence and natural audio are valid choices.
- Use only assets the user supplied, royalty-free assets the user has, or sounds synthesised with ffmpeg/sox. Do not claim licensed library sounds you do not have. If no SFX assets exist, say so and offer synthesised options or ask the user to add files to `input/audio/`.
- Every SFX must have a purpose; delete decorative ones.
