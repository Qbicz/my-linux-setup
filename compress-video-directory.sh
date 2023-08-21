# Compress all video files in a directory with CRT of 34 (the higher, the bigger compression and worse quality).
# 34 resulted in ~15% of original .mp4 size and good enough quality for documentation videos/walk-throughs/video guides.
for i in *.mp4; do ffmpeg -i "$i" -vcodec libx265 -crf 34 "../compressed-ff/${i%.*}-compressed.mp4"; done
