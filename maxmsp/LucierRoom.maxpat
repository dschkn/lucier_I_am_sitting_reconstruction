{
  "patcher": {
    "fileversion": 1,
    "appversion": {
      "major": 8,
      "minor": 6,
      "revision": 2,
      "architecture": "x64",
      "modernui": 1
    },
    "classnamespace": "box",
    "rect": [55.0, 65.0, 1320.0, 900.0],
    "bglocked": 0,
    "openinpresentation": 0,
    "default_fontsize": 12.0,
    "default_fontface": 0,
    "default_fontname": "Arial",
    "gridonopen": 1,
    "gridsize": [15.0, 15.0],
    "boxes": [
      {
        "box": {
          "id": "obj-1",
          "maxclass": "comment",
          "fontsize": 28.0,
          "fontface": 1,
          "text": "LUCIER ROOM",
          "patching_rect": [40.0, 25.0, 260.0, 40.0]
        }
      },
      {
        "box": {
          "id": "obj-2",
          "maxclass": "comment",
          "fontsize": 14.0,
          "text": "iterative re-recording for speech, recordings, physical rooms and synthetic resonances",
          "patching_rect": [42.0, 68.0, 650.0, 24.0]
        }
      },
      {
        "box": {
          "id": "obj-3",
          "maxclass": "panel",
          "bgcolor": [0.94, 0.94, 0.94, 1.0],
          "bordercolor": [0.2, 0.2, 0.2, 1.0],
          "patching_rect": [35.0, 115.0, 400.0, 265.0]
        }
      },
      {
        "box": {
          "id": "obj-4",
          "maxclass": "comment",
          "fontsize": 17.0,
          "fontface": 1,
          "text": "1  SOURCE",
          "patching_rect": [55.0, 132.0, 170.0, 25.0]
        }
      },
      {
        "box": {
          "id": "obj-5",
          "maxclass": "comment",
          "text": "input",
          "patching_rect": [55.0, 175.0, 50.0, 20.0]
        }
      },
      {
        "box": {
          "id": "obj-6",
          "maxclass": "umenu",
          "items": ["microphone", "audio file"],
          "patching_rect": [110.0, 172.0, 155.0, 24.0]
        }
      },
      {
        "box": {
          "id": "obj-7",
          "maxclass": "newobj",
          "text": "+ 1",
          "patching_rect": [280.0, 173.0, 35.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-8",
          "maxclass": "newobj",
          "text": "prepend input",
          "patching_rect": [325.0, 173.0, 85.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-9",
          "maxclass": "message",
          "text": "open",
          "patching_rect": [55.0, 215.0, 53.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-10",
          "maxclass": "comment",
          "text": "OPEN AUDIO FILE",
          "patching_rect": [115.0, 216.0, 120.0, 20.0]
        }
      },
      {
        "box": {
          "id": "obj-11",
          "maxclass": "message",
          "fontface": 1,
          "text": "capture",
          "patching_rect": [55.0, 270.0, 83.0, 27.0]
        }
      },
      {
        "box": {
          "id": "obj-12",
          "maxclass": "comment",
          "text": "CAPTURE SOURCE",
          "patching_rect": [148.0, 274.0, 125.0, 20.0]
        }
      },
      {
        "box": {
          "id": "obj-13",
          "maxclass": "message",
          "fontface": 1,
          "text": "finish",
          "patching_rect": [55.0, 315.0, 83.0, 27.0]
        }
      },
      {
        "box": {
          "id": "obj-14",
          "maxclass": "comment",
          "text": "FINISH SOURCE",
          "patching_rect": [148.0, 319.0, 125.0, 20.0]
        }
      },
      {
        "box": {
          "id": "obj-15",
          "maxclass": "newobj",
          "text": "adc~ 1",
          "patching_rect": [65.0, 445.0, 48.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-16",
          "maxclass": "newobj",
          "text": "sfplay~ 2",
          "patching_rect": [140.0, 445.0, 65.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-17",
          "maxclass": "newobj",
          "text": "r lucier.file",
          "patching_rect": [140.0, 410.0, 78.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-18",
          "maxclass": "newobj",
          "text": "selector~ 2",
          "patching_rect": [245.0, 485.0, 75.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-19",
          "maxclass": "newobj",
          "text": "r lucier.sourceSelector",
          "patching_rect": [245.0, 445.0, 140.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-20",
          "maxclass": "message",
          "text": "source_done",
          "patching_rect": [140.0, 520.0, 85.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-21",
          "maxclass": "panel",
          "bgcolor": [0.94, 0.94, 0.94, 1.0],
          "bordercolor": [0.2, 0.2, 0.2, 1.0],
          "patching_rect": [455.0, 115.0, 400.0, 265.0]
        }
      },
      {
        "box": {
          "id": "obj-22",
          "maxclass": "comment",
          "fontsize": 17.0,
          "fontface": 1,
          "text": "2  ROOM + ITERATIONS",
          "patching_rect": [475.0, 132.0, 250.0, 25.0]
        }
      },
      {
        "box": {
          "id": "obj-23",
          "maxclass": "comment",
          "text": "room path",
          "patching_rect": [475.0, 175.0, 70.0, 20.0]
        }
      },
      {
        "box": {
          "id": "obj-24",
          "maxclass": "umenu",
          "items": ["physical room", "virtual room"],
          "patching_rect": [550.0, 172.0, 155.0, 24.0]
        }
      },
      {
        "box": {
          "id": "obj-25",
          "maxclass": "newobj",
          "text": "+ 1",
          "patching_rect": [720.0, 173.0, 35.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-26",
          "maxclass": "newobj",
          "text": "prepend room",
          "patching_rect": [765.0, 173.0, 82.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-27",
          "maxclass": "comment",
          "text": "passes",
          "patching_rect": [475.0, 220.0, 50.0, 20.0]
        }
      },
      {
        "box": {
          "id": "obj-28",
          "maxclass": "number",
          "minimum": 1,
          "maximum": 50,
          "patching_rect": [550.0, 217.0, 62.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-29",
          "maxclass": "newobj",
          "text": "prepend iterations",
          "patching_rect": [625.0, 217.0, 105.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-30",
          "maxclass": "comment",
          "text": "tail (ms)",
          "patching_rect": [475.0, 260.0, 60.0, 20.0]
        }
      },
      {
        "box": {
          "id": "obj-31",
          "maxclass": "number",
          "minimum": 0,
          "maximum": 10000,
          "patching_rect": [550.0, 257.0, 70.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-32",
          "maxclass": "newobj",
          "text": "prepend tail",
          "patching_rect": [635.0, 257.0, 82.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-33",
          "maxclass": "message",
          "fontface": 1,
          "text": "run",
          "patching_rect": [475.0, 315.0, 65.0, 27.0]
        }
      },
      {
        "box": {
          "id": "obj-34",
          "maxclass": "comment",
          "text": "RUN ITERATIONS",
          "patching_rect": [552.0, 319.0, 125.0, 20.0]
        }
      },
      {
        "box": {
          "id": "obj-35",
          "maxclass": "newobj",
          "text": "loadmess 0",
          "patching_rect": [110.0, 132.0, 72.0, 22.0],
          "hidden": 1
        }
      },
      {
        "box": {
          "id": "obj-36",
          "maxclass": "newobj",
          "text": "loadmess 1",
          "patching_rect": [550.0, 132.0, 72.0, 22.0],
          "hidden": 1
        }
      },
      {
        "box": {
          "id": "obj-37",
          "maxclass": "newobj",
          "text": "loadmess 8",
          "patching_rect": [625.0, 132.0, 72.0, 22.0],
          "hidden": 1
        }
      },
      {
        "box": {
          "id": "obj-38",
          "maxclass": "newobj",
          "text": "loadmess 1200",
          "patching_rect": [700.0, 132.0, 95.0, 22.0],
          "hidden": 1
        }
      },
      {
        "box": {
          "id": "obj-39",
          "maxclass": "panel",
          "bgcolor": [0.94, 0.94, 0.94, 1.0],
          "bordercolor": [0.2, 0.2, 0.2, 1.0],
          "patching_rect": [875.0, 115.0, 400.0, 265.0]
        }
      },
      {
        "box": {
          "id": "obj-40",
          "maxclass": "comment",
          "fontsize": 17.0,
          "fontface": 1,
          "text": "3  STATUS + OUTPUT",
          "patching_rect": [895.0, 132.0, 220.0, 25.0]
        }
      },
      {
        "box": {
          "id": "obj-41",
          "maxclass": "message",
          "text": "ready",
          "patching_rect": [895.0, 172.0, 350.0, 45.0]
        }
      },
      {
        "box": {
          "id": "obj-42",
          "maxclass": "comment",
          "text": "completed passes",
          "patching_rect": [895.0, 238.0, 110.0, 20.0]
        }
      },
      {
        "box": {
          "id": "obj-43",
          "maxclass": "number",
          "patching_rect": [1010.0, 236.0, 55.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-44",
          "maxclass": "comment",
          "text": "current duration (ms)",
          "patching_rect": [895.0, 272.0, 125.0, 20.0]
        }
      },
      {
        "box": {
          "id": "obj-45",
          "maxclass": "number",
          "patching_rect": [1025.0, 270.0, 90.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-46",
          "maxclass": "message",
          "text": "stop",
          "patching_rect": [895.0, 320.0, 50.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-47",
          "maxclass": "message",
          "text": "reset",
          "patching_rect": [955.0, 320.0, 52.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-48",
          "maxclass": "message",
          "text": "export_current",
          "patching_rect": [1020.0, 320.0, 100.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-49",
          "maxclass": "comment",
          "text": "EXPORT CURRENT PASS",
          "patching_rect": [1125.0, 321.0, 145.0, 20.0]
        }
      },
      {
        "box": {
          "id": "obj-50",
          "maxclass": "newobj",
          "text": "js lucier_engine.js",
          "patching_rect": [590.0, 420.0, 125.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-51",
          "maxclass": "newobj",
          "text": "r lucier.roomSelector",
          "patching_rect": [380.0, 570.0, 135.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-52",
          "maxclass": "newobj",
          "text": "selector~ 2",
          "patching_rect": [380.0, 610.0, 75.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-53",
          "maxclass": "newobj",
          "text": "lucier_virtual_room~",
          "patching_rect": [500.0, 570.0, 125.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-54",
          "maxclass": "newobj",
          "text": "r lucier.phaseSelector",
          "patching_rect": [285.0, 650.0, 135.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-55",
          "maxclass": "newobj",
          "text": "selector~ 2",
          "patching_rect": [285.0, 690.0, 75.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-56",
          "maxclass": "newobj",
          "text": "record~ lucierA",
          "patching_rect": [200.0, 750.0, 100.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-57",
          "maxclass": "newobj",
          "text": "record~ lucierB",
          "patching_rect": [330.0, 750.0, 100.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-58",
          "maxclass": "newobj",
          "text": "r lucier.recA",
          "patching_rect": [200.0, 715.0, 80.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-59",
          "maxclass": "newobj",
          "text": "r lucier.recB",
          "patching_rect": [330.0, 715.0, 80.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-60",
          "maxclass": "newobj",
          "text": "buffer~ lucierA 660000 1",
          "patching_rect": [80.0, 805.0, 160.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-61",
          "maxclass": "newobj",
          "text": "buffer~ lucierB 660000 1",
          "patching_rect": [280.0, 805.0, 160.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-62",
          "maxclass": "newobj",
          "text": "r lucier.bufferA",
          "patching_rect": [80.0, 775.0, 98.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-63",
          "maxclass": "newobj",
          "text": "r lucier.bufferB",
          "patching_rect": [280.0, 775.0, 98.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-64",
          "maxclass": "newobj",
          "text": "play~ lucierA",
          "patching_rect": [690.0, 555.0, 85.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-65",
          "maxclass": "newobj",
          "text": "play~ lucierB",
          "patching_rect": [820.0, 555.0, 85.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-66",
          "maxclass": "newobj",
          "text": "r lucier.playA",
          "patching_rect": [690.0, 520.0, 88.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-67",
          "maxclass": "newobj",
          "text": "r lucier.playB",
          "patching_rect": [820.0, 520.0, 88.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-69",
          "maxclass": "newobj",
          "text": "+~",
          "patching_rect": [745.0, 645.0, 35.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-70",
          "maxclass": "newobj",
          "text": "*~ 0.7",
          "patching_rect": [745.0, 685.0, 55.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-71",
          "maxclass": "meter~",
          "patching_rect": [820.0, 675.0, 18.0, 80.0]
        }
      },
      {
        "box": {
          "id": "obj-72",
          "maxclass": "ezdac~",
          "patching_rect": [745.0, 750.0, 48.0, 48.0]
        }
      },
      {
        "box": {
          "id": "obj-73",
          "maxclass": "comment",
          "fontface": 1,
          "text": "AUDIO ON / OUTPUT",
          "patching_rect": [805.0, 765.0, 140.0, 20.0]
        }
      },
      {
        "box": {
          "id": "obj-74",
          "maxclass": "comment",
          "text": "physical path = loudspeaker playback is re-recorded by adc~; virtual path = playback passes through the delay-room abstraction",
          "patching_rect": [500.0, 820.0, 730.0, 34.0]
        }
      },
      {
        "box": {
          "id": "obj-75",
          "maxclass": "newobj",
          "text": "+~",
          "patching_rect": [140.0, 480.0, 35.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-76",
          "maxclass": "newobj",
          "text": "*~ 0.5",
          "patching_rect": [185.0, 480.0, 55.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-77",
          "maxclass": "comment",
          "text": "output gain",
          "patching_rect": [880.0, 680.0, 75.0, 20.0]
        }
      },
      {
        "box": {
          "id": "obj-78",
          "maxclass": "flonum",
          "minimum": 0.0,
          "maximum": 1.0,
          "patching_rect": [960.0, 678.0, 65.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-79",
          "maxclass": "newobj",
          "text": "loadmess 0.35",
          "patching_rect": [1040.0, 678.0, 95.0, 22.0],
          "hidden": 1
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": ["obj-6", 0],
          "destination": ["obj-7", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-7", 0],
          "destination": ["obj-8", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-8", 0],
          "destination": ["obj-50", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-9", 0],
          "destination": ["obj-16", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-11", 0],
          "destination": ["obj-50", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-13", 0],
          "destination": ["obj-50", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-15", 0],
          "destination": ["obj-18", 1]
        }
      },
      {
        "patchline": {
          "source": ["obj-16", 2],
          "destination": ["obj-20", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-17", 0],
          "destination": ["obj-16", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-19", 0],
          "destination": ["obj-18", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-20", 0],
          "destination": ["obj-50", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-24", 0],
          "destination": ["obj-25", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-25", 0],
          "destination": ["obj-26", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-26", 0],
          "destination": ["obj-50", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-28", 0],
          "destination": ["obj-29", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-29", 0],
          "destination": ["obj-50", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-31", 0],
          "destination": ["obj-32", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-32", 0],
          "destination": ["obj-50", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-33", 0],
          "destination": ["obj-50", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-35", 0],
          "destination": ["obj-6", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-36", 0],
          "destination": ["obj-24", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-37", 0],
          "destination": ["obj-28", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-38", 0],
          "destination": ["obj-31", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-46", 0],
          "destination": ["obj-50", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-47", 0],
          "destination": ["obj-50", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-48", 0],
          "destination": ["obj-50", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-50", 0],
          "destination": ["obj-41", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-50", 1],
          "destination": ["obj-43", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-50", 2],
          "destination": ["obj-45", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-51", 0],
          "destination": ["obj-52", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-15", 0],
          "destination": ["obj-52", 1]
        }
      },
      {
        "patchline": {
          "source": ["obj-53", 0],
          "destination": ["obj-52", 2]
        }
      },
      {
        "patchline": {
          "source": ["obj-54", 0],
          "destination": ["obj-55", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-18", 0],
          "destination": ["obj-55", 1]
        }
      },
      {
        "patchline": {
          "source": ["obj-52", 0],
          "destination": ["obj-55", 2]
        }
      },
      {
        "patchline": {
          "source": ["obj-55", 0],
          "destination": ["obj-56", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-55", 0],
          "destination": ["obj-57", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-58", 0],
          "destination": ["obj-56", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-59", 0],
          "destination": ["obj-57", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-62", 0],
          "destination": ["obj-60", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-63", 0],
          "destination": ["obj-61", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-66", 0],
          "destination": ["obj-64", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-67", 0],
          "destination": ["obj-65", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-64", 0],
          "destination": ["obj-69", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-65", 0],
          "destination": ["obj-69", 1]
        }
      },
      {
        "patchline": {
          "source": ["obj-69", 0],
          "destination": ["obj-70", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-69", 0],
          "destination": ["obj-53", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-70", 0],
          "destination": ["obj-71", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-70", 0],
          "destination": ["obj-72", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-70", 0],
          "destination": ["obj-72", 1]
        }
      },
      {
        "patchline": {
          "source": ["obj-16", 0],
          "destination": ["obj-75", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-16", 1],
          "destination": ["obj-75", 1]
        }
      },
      {
        "patchline": {
          "source": ["obj-75", 0],
          "destination": ["obj-76", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-76", 0],
          "destination": ["obj-18", 2]
        }
      },
      {
        "patchline": {
          "source": ["obj-78", 0],
          "destination": ["obj-70", 1]
        }
      },
      {
        "patchline": {
          "source": ["obj-79", 0],
          "destination": ["obj-78", 0]
        }
      }
    ]
  }
}
