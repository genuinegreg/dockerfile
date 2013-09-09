#!/bin/bash

cd ~/ffmpeg_sources/ffmpeg
PKG_CONFIG_PATH="$HOME/ffmpeg_build/lib/pkgconfig"
export PKG_CONFIG_PATH
./configure --prefix="$HOME/ffmpeg_build" \
  --extra-cflags="-I$HOME/ffmpeg_build/include" --extra-ldflags="-L$HOME/ffmpeg_build/lib" \
  --bindir="$HOME/bin" --extra-libs="-ldl" --enable-gpl --enable-libfdk-aac \
  --enable-libvorbis --enable-libvpx \
  --enable-libx264 --enable-nonfree
make -j4
make install
make distclean
hash -r