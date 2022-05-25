This script is to help you download and format camvid with a single command.
The original dataset website can be found at http://web4.cs.ucl.ac.uk/staff/g.brostow/MotionSegRecData/
Simply create a folder `camvid` and move the script inside. Then run:

```
sh download_camvid.sh
```

You will need the following packages installed:
```
unzip
ffmpeg
```

It will download all the files from the project webpage and format it as follows:

```
camvid
├── RAW                     # Holds the Raw Video Data for each sequence
├── labels                  # The folder containing single image segmentation labels for all sequences
│   ├── 0001TP_006690_L.png
│   ├── ...
│   └── Seq05VD_f05100_L.png
├── seq01TP                 # Single frames of seq01TP
│   ├── 0001TP_006690.png
│   ├── 0001TP_006691.png
│   ├── ...
│   └── 0001TP_010350.png
├── seq05VD                 # Single frames of seq05VD
│   ├── Seq05VD_f00000.png
│   ├── Seq05VD_f00001.png
│   ├── ...
│   └── Seq05VD_f05100.png
├── seq06R0                 # Single frames of seq06R0
│   ├── 0006R0_f00930.png
│   ├── 0006R0_f00931.png
│   ├── ...
│   └── 0006R0_f03930.png
├── seq16E5                 # Single frames of seq16E5
│   ├── 0016E5_00390.png
│   ├── 0016E5_00391.png
│   ├── ...
│   └── 0016E5_08640.png
└── ...
```

The following dict can be used as colormap:
```
name: "CamVid"

classes:
  - name: Void
    colors:
      - [0, 0, 0]
  - name: Sky
    colors:
      - [128, 128, 128]
  - name: Building
    colors:
      - [128, 0, 0]
      - [0, 128, 64]
      - [64, 192, 0]
      - [64, 0, 64]
      - [192, 0, 128]
  - name: TrafficCone
    colors:
      - [192, 192, 128]
      - [0, 0, 64]
  - name: Road
    colors:
      - [128, 64, 128]
      - [128, 0, 192]
      - [192, 0, 64]
  - name: SideWalk
    colors:
      - [0, 0, 192]
      - [64, 192, 128]
      - [128, 128, 192]
  - name: Tree
    colors:
      - [128, 128, 0]
      - [192, 192, 0]
  - name: Sign
    colors:
      - [192, 128, 128]
      - [128, 128, 64]
      - [0, 64, 64]
  - name: Fence
    colors:
      - [64, 64, 128]
  - name: Car
    colors:
      - [64, 0, 128]
      - [64, 128, 192]
      - [192, 128, 192]
      - [192, 64, 128]
      - [128, 64, 64]
  - name: Pedestrian
    colors:
      - [64, 64, 0]
      - [192, 128, 64]
      - [64, 0, 192]
      - [64, 128, 64]
  - name: Bicycle
    colors:
      - [0, 128, 192]
      - [192, 0, 192]

```

Please make sure to cite the authors and give credit:
```
@inproceedings{ BrostowSFC:ECCV08,
  author    = {Gabriel J. Brostow and Jamie Shotton and Julien Fauqueur and Roberto Cipolla},
  title     = {Segmentation and Recognition Using Structure from Motion Point Clouds},
  booktitle = {ECCV (1)},
  year      = {2008},
  pages     = {44-57}
}
   
@article{ BrostowFC:PRL2008,
    author = "Gabriel J. Brostow and Julien Fauqueur and Roberto Cipolla",
    title = "Semantic Object Classes in Video: A High-Definition Ground Truth Database",
    journal = "Pattern Recognition Letters",
    volume = "xx",
    number = "x",   
    pages = "xx-xx",
    year = "2008"
}
```
