# Lucier Room — Max/MSP prototype

This folder adds a Max/MSP laboratory to the original browser project without
changing its Vue application.

The patch reconstructs the process behind Alvin Lucier's *I am sitting in a
room*: a source is recorded, played into a resonant system, recorded again, and
the new recording becomes the source for the next pass. Repetition gradually
replaces the source spectrum with the resonances of the room or model while
usually preserving parts of its rhythm and envelope.

## What the first prototype does

- accepts live microphone input or an arbitrary mono audio file;
- captures the source into the first of two alternating buffers;
- performs a user-defined number of re-recording passes;
- supports a **physical room** path (speaker playback recorded by a microphone);
- supports a **virtual room** path for silent/offline experiments without
  acoustic feedback;
- adds a configurable tail after every pass so room decay is retained;
- exports the most recent pass as an audio file;
- keeps all control logic in `lucier_engine.js`.

Only standard Max/MSP objects are used. No externals are required.

## Files

- `LucierRoom.maxpat` — main patch and user interface.
- `lucier_engine.js` — ping-pong buffer and iteration controller.
- `lucier_virtual_room~.maxpat` — a deliberately simple resonant delay-network
  abstraction used by virtual mode.

Keep all three files in the same directory.

## Quick start: virtual room

1. Open `LucierRoom.maxpat` in Max 8 or newer.
2. Turn audio on with the `ezdac~` speaker button.
3. Leave **room path** set to `virtual room`.
4. Choose a source:
   - **microphone**: click `CAPTURE SOURCE`, speak or play, then click
     `FINISH SOURCE`;
   - **audio file**: click `OPEN AUDIO FILE`, choose a mono or stereo file,
     then click `CAPTURE SOURCE`. Capture stops automatically when playback
     ends; `FINISH SOURCE` can also stop it manually.
5. Set the number of passes and the decay tail.
6. Click `RUN ITERATIONS`.
7. Click `EXPORT CURRENT PASS` to write the latest buffer to disk.

Stereo files are summed to mono before capture. Long sources are limited by the
eleven-minute working buffers. For a first test, 10–30 seconds of dry speech and
8–16 passes are a useful range.

## Quick start: physical room

1. Connect a microphone and loudspeaker and select them in Max's Audio Status.
2. Place the microphone in the room, away from the loudspeaker enough to avoid
   immediate feedback.
3. Set **room path** to `physical room`.
4. Capture the source as described above.
5. Start with conservative **output gain** (the default is 0.35) and 4–8 passes.
6. Run the iterations. On every pass Max plays the current buffer through the
   loudspeaker while the microphone records the room into the other buffer.

Do not use headphones for physical-room mode: the point is to let the playback
travel through air, loudspeaker, room and microphone. Watch the signal level.
The process can build narrow, loud resonances surprisingly fast.

## Signal flow

```text
microphone or file
        |
   capture pass A
        |
  play current pass ---------> loudspeaker
        |                           |
        |                    physical room + mic
        |                           |
        +--> virtual room ----------+
                    |
             record other buffer
                    |
              swap A <-> B
                    |
                 repeat
```

The two-buffer design avoids reading and writing the same buffer at once. The
JavaScript controller starts the destination recorder, launches the current
buffer, waits for its end plus the requested room tail, stops recording, swaps
the buffers and begins the next pass.

## About the virtual model

`lucier_virtual_room~` is not intended as an acoustically exact room simulator.
It is a compact feedback delay network with unequal delay times and high/low
frequency damping. Each pass applies its transfer function again, so its modal
peaks become progressively dominant—the same structural operation that matters
in Lucier's process.

Later versions can add:

- convolution with a measured room impulse response;
- automatic normalization and overload protection between passes;
- per-pass archival files and a visual iteration history;
- multichannel rooms and microphone arrays;
- analysis of the resonant frequencies that emerge;
- comparison between physical, convolution and synthetic room models.

## Limits of this prototype

- Source duration is measured in real time. Capturing a file therefore happens
  in real time too.
- The buffers are fixed at 660,000 ms (eleven minutes).
- The patch does not normalize each generation. This is intentional for the
  first prototype, but physical gain staging matters.
- The virtual room is mono.
- Max itself is required; the existing website remains the browser-accessible
  version.

## Credits and relation to the original project

The existing repository was created by Dennis Scheiba (`capital-G`) as a
browser realization of the same iterative acoustic procedure. The Max/MSP work
in this folder is an additive extension: it leaves the original Vue/Vuetify
application and deployment workflow intact.

Alvin Lucier's composition and text remain the work of Alvin Lucier. This code
implements a general signal process and does not bundle the score or commercial
recordings.
