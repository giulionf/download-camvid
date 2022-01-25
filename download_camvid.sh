# Download Labels
mkdir -p labels
wget -P labels http://web4.cs.ucl.ac.uk/staff/g.brostow/MotionSegRecData/data/LabeledApproved_full.zip
unzip ./labels/LabeledApproved_full.zip -d ./labels
rm -rf ./labels/LabeledApproved_full.zip

# Download Raw videos
mkdir -p RAW
wget -P ./RAW http://vis.cs.ucl.ac.uk/Download/G.Brostow/CamVid/01TP_extract.avi
wget -P ./RAW http://vis.cs.ucl.ac.uk/Download/G.Brostow/CamVid/0005VD.MXF
wget -P ./RAW http://vis.cs.ucl.ac.uk/Download/G.Brostow/CamVid/0006R0.MXF
wget -P ./RAW http://vis.cs.ucl.ac.uk/Download/G.Brostow/CamVid/0016E5.zip.001
wget -P ./RAW http://vis.cs.ucl.ac.uk/Download/G.Brostow/CamVid/0016E5.zip.002
cat ./RAW/0016E5.zip.* > ./RAW/0016E5.zip
unzip ./RAW/0016E5.zip -d ./RAW
rm -rf ./RAW/0016E5.zip
rm -rf ./RAW/0016E5.zip.001
rm -rf ./RAW/0016E5.zip.002

# Get frames of each video
# Seq 1 - Video 0006R0.MXF Frames 930 to 3930
mkdir -p seq06R0
ffmpeg -i ./RAW/0006R0.MXF -start_number 930 -vf select='between(n\,930\,3930)' -vsync 0 ./seq06R0/0006R0_f%5d.png

# Seq 2 - Video 0016E5.MXF Frames 390 to 8640
mkdir -p seq16E5
ffmpeg -i ./RAW/0016E5.MXF -start_number 390 -vf select='between(n\,390\,8640)' -vsync 0 ./seq16E5/0016E5_%5d.png

# Seq 3 - Video 01TP_extract.avi Frames 30 to 3690
mkdir -p seq01TP
ffmpeg -i ./RAW/01TP_extract.avi -start_number 6690 -vf select='between(n\,30\,3690)' -vsync 0 ./seq01TP/0001TP_%6d.png

# Seq 4 - Video 0005VD.MXF Frames 0 to 5100
mkdir -p seq05VD
ffmpeg -i ./RAW/0005VD.MXF -start_number 0 -vf select='between(n\,0\,5100)' -vsync 0 ./seq05VD/Seq05VD_f%5d.png
