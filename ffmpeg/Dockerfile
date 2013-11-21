# Build ffmpeg from source

FROM base

RUN apt-get update
RUN apt-get -y install autoconf; apt-get clean
RUN apt-get -y install automake; apt-get clean
RUN apt-get -y install build-essential; apt-get clean
RUN apt-get -y install git; apt-get clean
RUN apt-get -y install libtool; apt-get clean
RUN apt-get -y install libvorbis-dev; apt-get clean
RUN apt-get -y install pkg-config ; apt-get clean
RUN apt-get -y install wget; apt-get clean
RUN mkdir ~/ffmpeg_sources


RUN cd ~/ffmpeg_sources; wget http://www.tortall.net/projects/yasm/releases/yasm-1.2.0.tar.gz; tar xzvf yasm-1.2.0.tar.gz; cd yasm-1.2.0; ./configure --prefix="$HOME/ffmpeg_build" --bindir="$HOME/bin"; make -j4; make install; make distclean; cd ~/ffmpeg_sources; rm -R yasm-1.2.0*


RUN cd ~/ffmpeg_sources; git clone --depth 1 git://git.videolan.org/x264.git; cd x264; ./configure --prefix="$HOME/ffmpeg_build" --bindir="$HOME/bin" --enable-static; make -j4; make install; make distclean; cd ~/ffmpeg_sources; rm -R x264

RUN cd ~/ffmpeg_sources; git clone --depth 1 git://github.com/mstorsjo/fdk-aac.git; cd fdk-aac; autoreconf -fiv; ./configure --prefix="$HOME/ffmpeg_build" --disable-shared; make -j4; make install; make distclean; cd ~/ffmpeg_sources; rm -R fdk-aac

RUN cd ~/ffmpeg_sources; git clone --depth 1 http://git.chromium.org/webm/libvpx.git; cd libvpx; ./configure --prefix="$HOME/ffmpeg_build" --disable-examples; make -j4; make install; make clean; cd ~/ffmpeg_sources; rm -R libvpx

RUN cd ~/ffmpeg_sources; git clone --depth 1 git://source.ffmpeg.org/ffmpeg; cd ffmpeg; PKG_CONFIG_PATH="$HOME/ffmpeg_build/lib/pkgconfig"; export PKG_CONFIG_PATH; ./configure --prefix="$HOME/ffmpeg_build" --extra-cflags="-I$HOME/ffmpeg_build/include" --extra-ldflags="-L$HOME/ffmpeg_build/lib" --bindir="$HOME/bin" --extra-libs="-ldl" --enable-gpl --enable-libfdk-aac --enable-libvorbis --enable-libvpx --enable-libx264 --enable-nonfree; make -j4; make install; make distclean; hash -r; cd ~/ffmpeg_sources; rm -R ffmpeg


RUN apt-get autoremove -y autoconf automake build-essential git libtool pkg-config wget



CMD ["ffmpeg"]