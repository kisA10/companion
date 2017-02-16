export LD_LIBRARY_PATH=/usr/local/lib/
gst-launch-1.0 -v v4l2src device=/dev/video1 do-timestamp=true ! queue ! "video/x-h264, stream-format=(string)byte-stream, alignment=(string)au, width=(int)1920, height=(int)1080, pixel-aspect-ratio=(fraction)1/1, framerate=(fraction)30/1" ! h264parse ! rtph264pay config-interval=1 pt=96 ! udpsink host=192.168.2.1 port=5600
