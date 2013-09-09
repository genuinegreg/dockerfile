FFmpeg docker image
====================
FFmpeg build with libx264, libvpx, libvorbis and libfdk-aac.
Usefull from wek streaming mp4/hls with h264/aac and webm/dash with vpx/vorbis

Deps
------------
=== yasm 1.2.0
yasm-1.2.0.tar.gz from http://yasm.tortall.net/Download.html
http://www.tortall.net/projects/yasm/releases/yasm-1.2.0.tar.gz

=== lib x264 (git)
git snapshot from git://git.videolan.org/x264.git

=== lib vpx (git)
git snapshot from http://git.chromium.org/webm/libvpx.git

=== lib fdk-aac (git )
git snapshot from git://github.com/mstorsjo/fdk-aac.git

=== libvorbis
from ubuntu quantal repositories


Issue
------------
The image is quite large.
A lots of deps are nedded to build ffmpeg but are useless afterward :-(