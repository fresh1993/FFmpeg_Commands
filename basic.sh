#保存rtsp://192.168.137.5:554/live/main_stream的视频流
ffmpeg -rtsp_transport udp -buffer_size 10240000 -hwaccel cuda -i "rtsp://192.168.137.5:554/live/main_stream" -c:v h264_nvenc -preset p4 -b:v 2M -c:a copy output.mp4
