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
    "rect": [90.0, 90.0, 920.0, 620.0],
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
          "text": "Compact virtual room: unequal taps + stable feedback + spectral damping",
          "patching_rect": [40.0, 25.0, 490.0, 20.0]
        }
      },
      {
        "box": {
          "id": "obj-2",
          "maxclass": "inlet",
          "comment": "audio input",
          "patching_rect": [45.0, 75.0, 30.0, 30.0]
        }
      },
      {
        "box": {
          "id": "obj-3",
          "maxclass": "newobj",
          "text": "*~ 0.55",
          "patching_rect": [110.0, 78.0, 57.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-4",
          "maxclass": "newobj",
          "text": "+~",
          "patching_rect": [200.0, 78.0, 35.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-5",
          "maxclass": "newobj",
          "text": "tapin~ 250.",
          "patching_rect": [270.0, 78.0, 78.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-6",
          "maxclass": "newobj",
          "text": "tapout~ 29.7 43.1 61.3 89.9 127.7",
          "patching_rect": [270.0, 125.0, 235.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-7",
          "maxclass": "newobj",
          "text": "*~ 0.22",
          "patching_rect": [215.0, 190.0, 57.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-8",
          "maxclass": "newobj",
          "text": "*~ 0.18",
          "patching_rect": [295.0, 190.0, 57.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-9",
          "maxclass": "newobj",
          "text": "*~ 0.15",
          "patching_rect": [375.0, 190.0, 57.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-10",
          "maxclass": "newobj",
          "text": "*~ 0.12",
          "patching_rect": [455.0, 190.0, 57.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-11",
          "maxclass": "newobj",
          "text": "*~ 0.10",
          "patching_rect": [535.0, 190.0, 57.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-12",
          "maxclass": "newobj",
          "text": "+~",
          "patching_rect": [270.0, 245.0, 35.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-13",
          "maxclass": "newobj",
          "text": "+~",
          "patching_rect": [350.0, 285.0, 35.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-14",
          "maxclass": "newobj",
          "text": "+~",
          "patching_rect": [430.0, 325.0, 35.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-15",
          "maxclass": "newobj",
          "text": "+~",
          "patching_rect": [510.0, 365.0, 35.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-16",
          "maxclass": "newobj",
          "text": "*~ 0.68",
          "patching_rect": [615.0, 365.0, 57.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-17",
          "maxclass": "newobj",
          "text": "*~ 0.82",
          "patching_rect": [510.0, 420.0, 57.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-18",
          "maxclass": "newobj",
          "text": "*~ 0.18",
          "patching_rect": [75.0, 420.0, 57.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-19",
          "maxclass": "newobj",
          "text": "+~",
          "patching_rect": [300.0, 465.0, 35.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-20",
          "maxclass": "newobj",
          "text": "hip~ 70.",
          "patching_rect": [300.0, 505.0, 60.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-21",
          "maxclass": "newobj",
          "text": "lop~ 6800.",
          "patching_rect": [300.0, 545.0, 72.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-22",
          "maxclass": "outlet",
          "comment": "room output",
          "patching_rect": [300.0, 580.0, 30.0, 30.0]
        }
      },
      {
        "box": {
          "id": "obj-23",
          "maxclass": "comment",
          "text": "feedback remains below unity; repeated external passes create the stronger spectral convergence",
          "patching_rect": [585.0, 420.0, 300.0, 34.0]
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": ["obj-2", 0],
          "destination": ["obj-3", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-3", 0],
          "destination": ["obj-4", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-4", 0],
          "destination": ["obj-5", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-5", 0],
          "destination": ["obj-6", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-6", 0],
          "destination": ["obj-7", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-6", 1],
          "destination": ["obj-8", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-6", 2],
          "destination": ["obj-9", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-6", 3],
          "destination": ["obj-10", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-6", 4],
          "destination": ["obj-11", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-7", 0],
          "destination": ["obj-12", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-8", 0],
          "destination": ["obj-12", 1]
        }
      },
      {
        "patchline": {
          "source": ["obj-12", 0],
          "destination": ["obj-13", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-9", 0],
          "destination": ["obj-13", 1]
        }
      },
      {
        "patchline": {
          "source": ["obj-13", 0],
          "destination": ["obj-14", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-10", 0],
          "destination": ["obj-14", 1]
        }
      },
      {
        "patchline": {
          "source": ["obj-14", 0],
          "destination": ["obj-15", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-11", 0],
          "destination": ["obj-15", 1]
        }
      },
      {
        "patchline": {
          "source": ["obj-15", 0],
          "destination": ["obj-16", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-16", 0],
          "destination": ["obj-4", 1]
        }
      },
      {
        "patchline": {
          "source": ["obj-15", 0],
          "destination": ["obj-17", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-2", 0],
          "destination": ["obj-18", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-18", 0],
          "destination": ["obj-19", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-17", 0],
          "destination": ["obj-19", 1]
        }
      },
      {
        "patchline": {
          "source": ["obj-19", 0],
          "destination": ["obj-20", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-20", 0],
          "destination": ["obj-21", 0]
        }
      },
      {
        "patchline": {
          "source": ["obj-21", 0],
          "destination": ["obj-22", 0]
        }
      }
    ]
  }
}
