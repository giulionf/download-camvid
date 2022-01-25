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
COLORMAP = {
	(64, 128, 64): 1,  # Animal
	(192, 0, 128): 2,  # Archway
	(0, 128, 192): 3,  # Bicyclist
	(0, 128, 64): 4,  # Bridge
	(128, 0, 0): 5,  # Building
	(64, 0, 128): 6,  # Car
	(64, 0, 192): 7,  # CartLuggagePram
	(192, 128, 64): 8,  # Child
	(192, 192, 128): 9,  # Column_Pole
	(64, 64, 128): 10,  # Fence
	(128, 0, 192): 11,  # LaneMkgsDriv
	(192, 0, 64): 12,  # LaneMkgsNonDriv
	(128, 128, 64): 13,  # Misc_Text
	(192, 0, 192): 14,  # MotorcycleScooter
	(128, 64, 64): 15,  # OtherMoving
	(64, 192, 128): 16,  # ParkingBlock
	(64, 64, 0): 17,  # Pedestrian
	(128, 64, 128): 18,  # Road
	(128, 128, 192): 19,  # RoadShoulder
	(0, 0, 192): 20,  # Sidewalk
	(192, 128, 128): 21,  # SignSymbol
	(128, 128, 128): 22,  # Sky
	(64, 128, 192): 23,  # SUVPickupTruck
	(0, 0, 64): 24,  # TrafficCone
	(0, 64, 64): 25,  # TrafficLight
	(192, 64, 128): 26,  # Train
	(128, 128, 0): 27,  # Tree
	(192, 128, 192): 28,  # Truck_Bus
	(64, 0, 64): 29,  # Tunnel
	(192, 192, 0): 30,  # VegetationMisc
	(0, 0, 0): 31,  # Void
	(64, 192, 0): 32  # Wall
}
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
