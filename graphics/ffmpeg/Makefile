COMMENT=	audio/video converter and streamer

V=		6.1.2
DISTNAME=	ffmpeg-${V}
REVISION=	3
EPOCH=		1
CATEGORIES=	graphics multimedia
SITES=		https://ffmpeg.org/releases/
EXTRACT_SUFX=	.tar.xz

USE_NOBTCFI-amd64=	Yes

SHARED_LIBS=	avcodec		26.0 \
		avdevice	14.0 \
		avfilter	12.0 \
		avformat	23.0 \
		avutil		16.0 \
		postproc	20.0 \
		swresample	5.0 \
		swscale		8.0

HOMEPAGE=	https://ffmpeg.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1 and GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += SDL2 X11 Xext Xv aom ass bz2 c crypto dav1d fontconfig
WANTLIB += freetype fribidi gsm harfbuzz iconv lzma m mp3lame opus
WANTLIB += pthread sndio speex ssl theoradec theoraenc v4l2 va
WANTLIB += va-drm va-x11 vidstab vorbis vorbisenc vpx webp webpmux
WANTLIB += x264 x265 xcb xcb-shape xcb-shm xcb-xfixes xml2 xvidcore
WANTLIB += z zimg

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

DEBUG_PACKAGES=	${BUILD_PACKAGES}

BUILD_DEPENDS=	audio/ladspa \
		textproc/texi2html \
		multimedia/frei0r-plugins
.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS+=	devel/nasm
.endif
LIB_DEPENDS=	archivers/bzip2 \
		archivers/xz \
		audio/lame \
		audio/libvorbis \
		audio/opus \
		audio/speex \
		audio/gsm \
		converters/libiconv \
		devel/fribidi \
		devel/harfbuzz \
		devel/sdl2 \
		graphics/libwebp \
		graphics/zimg \
		multimedia/aom \
		multimedia/dav1d \
		multimedia/libass \
		multimedia/libtheora \
		multimedia/libv4l \
		multimedia/libvidstab \
		multimedia/libvpx \
		multimedia/x264 \
		multimedia/x265 \
		multimedia/xvidcore \
		textproc/libxml

# inter-library dependencies for the current configuration
LIBavcodec_EXTRALIBS=-L${LOCALBASE}/lib -L${X11BASE}/lib -laom -ldav1d -lgsm -liconv -llzma
LIBavcodec_EXTRALIBS+=-lmp3lame -lopus -lspeex -ltheoradec -ltheoraenc -lvorbis
LIBavcodec_EXTRALIBS+=-lvorbisenc -lvpx -lwebp -lwebpmux -lx264 -lx265 -lxvidcore
LIBavcodec_EXTRALIBS+=-lm -lz -lva -lva-drm -pthread

LIBavdevice_EXTRALIBS=-L${LOCALBASE}/lib -L${X11BASE}/lib -lX11 -lXext -lXv
LIBavdevice_EXTRALIBS+=-lxcb-shape -lxcb-shm -lxcb-xfixes -lxcb -lsndio -lv4l2 -lm

LIBavfilter_EXTRALIBS=-L${LOCALBASE}/lib -L${X11BASE}/lib -lass -lfontconfig
LIBavfilter_EXTRALIBS+=-lfreetype -lfribidi -lharfbuzz -lvidstab
LIBavfilter_EXTRALIBS+=-lm -lz -lzimg -lva -pthread

LIBavformat_EXTRALIBS=-L${LOCALBASE}/lib -lbz2 -lxml2 -lssl -lcrypto -lm -lz

LIBavutil_EXTRALIBS=-L${X11BASE}/lib -lva -lva-drm -lva-x11 -lm -pthread

LIBpostproc_EXTRALIBS=-lm
LIBswresample_EXTRALIBS=-lm
LIBswscale_EXTRALIBS=-lm

.if ${MACHINE_ARCH} == i386
LDLIBFLAGS+=	-Wl,-znotext
.endif

OPTFLAGS=	${CFLAGS}

# until the system headers are fixed properly.
OPTFLAGS+=	-Wno-redundant-decls

FIX_EXTRACT_PERMISSIONS=	Yes
SEPARATE_BUILD=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= simple
CONFIGURE_ARGS+=--enable-shared \
		--arch=${MACHINE_ARCH} \
		--cc=${CC} \
		--cxx=${CXX} \
		--enable-debug \
		--disable-stripping \
		--disable-indev=jack \
		--disable-outdev=sdl2 \
		--disable-vulkan \
		--enable-fontconfig \
		--enable-frei0r \
		--enable-gpl \
		--enable-ladspa \
		--enable-libaom \
		--enable-libass \
		--enable-libdav1d \
		--enable-libfontconfig \
		--enable-libfreetype \
		--enable-libfribidi \
		--enable-libgsm \
		--enable-libharfbuzz \
		--enable-libmp3lame \
		--enable-libopus \
		--enable-libspeex \
		--enable-libtheora \
		--enable-libv4l2 \
		--enable-libvorbis \
		--enable-libvpx \
		--enable-libwebp \
		--enable-libx264 \
		--enable-libx265 \
		--enable-libxml2 \
		--enable-libxvid \
		--enable-libzimg \
		--enable-nonfree \
		--enable-openssl \
		--enable-libvidstab \
		--extra-cflags="-I${LOCALBASE}/include -I${X11BASE}/include" \
		--extra-libs="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
		--extra-ldsoflags="${LDLIBFLAGS}" \
		--mandir=${PREFIX}/man \
		--objcc="/usr/bin/false" \
		--optflags="${OPTFLAGS}"

.if ${MACHINE_ARCH} == "arm"
CONFIGURE_ARGS+=--disable-asm
.endif
.if ${MACHINE_ARCH} == "powerpc"
CONFIGURE_ARGS+=--disable-altivec
.endif
.if ${MACHINE_ARCH} == "mips64"  || ${MACHINE_ARCH} == "mips64el"
CONFIGURE_ARGS+=--disable-mipsdsp \
		--disable-mipsdspr2 \
		--disable-mipsfpu \
		--disable-mmi \
		--disable-msa
.endif

CONFIGURE_ENV+=	TERM=${TERM} \
		TMPDIR=${WRKBUILD} \
		X86ASMFLAGS="${DEBUG}"

MAKE_ENV+=	V=1 \
		libavcodec_extralibs="${LIBavcodec_EXTRALIBS}" \
		libavdevice_extralibs="${LIBavdevice_EXTRALIBS}" \
		libavfilter_extralibs="${LIBavfilter_EXTRALIBS}" \
		libavformat_extralibs="${LIBavformat_EXTRALIBS}" \
		libavutil_extralibs="${LIBavutil_EXTRALIBS}" \
		libpostproc_extralibs="${LIBpostproc_EXTRALIBS}" \
		libswresample_extralibs="${LIBswresample_EXTRALIBS}" \
		libswscale_extralibs="${LIBswscale_EXTRALIBS}" \
		libavcodec_linkflags="-Wl,-rpath-link,${LOCALBASE}/lib" \
		libavdevice_linkflags="-Wl,-rpath-link,${LOCALBASE}/lib:${X11BASE}/lib" \
		libavfilter_linkflags="-Wl,-rpath-link,${LOCALBASE}/lib:${X11BASE}/lib" \
		libavformat_linkflags="-Wl,-rpath-link,${LOCALBASE}/lib" \
		libavutil_linkflags="" \
		libpostproc_linkflags="" \
		libswresample_linkflags="" \
		libswscale_linkflags="" \
		libavcodec_requires="libswresample libavutil" \
		libavdevice_requires="libavfilter libswscale libpostproc libavformat libavcodec libswresample libavutil" \
		libavfilter_requires="libswscale libpostproc libavformat libavcodec libswresample libavutil" \
		libavformat_requires="libavcodec libswresample libavutil" \
		libavutil_requires="" \
		libpostproc_requires="libavutil" \
		libswresample_requires="libavutil" \
		libswscale_requires="libavutil"

VERSION_FLAGS=	libavcodec_VERSION=${LIBavcodec_VERSION} \
		libavdevice_VERSION=${LIBavdevice_VERSION} \
		libavfilter_VERSION=${LIBavfilter_VERSION} \
		libavformat_VERSION=${LIBavformat_VERSION} \
		libavutil_VERSION=${LIBavutil_VERSION} \
		libpostproc_VERSION=${LIBpostproc_VERSION} \
		libswresample_VERSION=${LIBswresample_VERSION} \
		libswscale_VERSION=${LIBswscale_VERSION}

MAKE_FLAGS=	${VERSION_FLAGS} \
		LIBavcodec_EXTRALIBS="-lswresample -lavutil ${LIBavcodec_EXTRALIBS}" \
		LIBavdevice_EXTRALIBS="-lavfilter -lswscale -lpostproc -lavformat -lavcodec -lswresample -lavutil ${LIBavdevice_EXTRALIBS}" \
		LIBavfilter_EXTRALIBS="-lswscale -lpostproc -lavformat -lavcodec -lswresample -lavutil ${LIBavfilter_EXTRALIBS}" \
		LIBavformat_EXTRALIBS="-lavcodec -lswresample -lavutil ${LIBavformat_EXTRALIBS}" \
		LIBavutil_EXTRALIBS="${LIBavutil_EXTRALIBS}" \
		LIBpostproc_EXTRALIBS="-lavutil ${LIBpostproc_EXTRALIBS}" \
		LIBswresample_EXTRALIBS="-lavutil ${LIBswresample_EXTRALIBS}" \
		LIBswscale_EXTRALIBS="-lavutil ${LIBswscale_EXTRALIBS}"
FAKE_FLAGS=	${VERSION_FLAGS} \
		LDCONFIG=true

ALL_TARGET=	all tools/qt-faststart
TEST_TARGET=	check

.for _l in avutil avfilter avcodec avformat avdevice swscale swresample postproc
TEST_LIB_PATH:=	${TEST_LIB_PATH}:${WRKBUILD}/lib${_l}
.endfor
TEST_ENV+=	LD_LIBRARY_PATH=${TEST_LIB_PATH:C/^://}

HTML_DOCS=	developer faq ffmpeg ffplay ffprobe general libavfilter

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ffmpeg
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ffmpeg
	${INSTALL_PROGRAM} ${WRKBUILD}/tools/qt-faststart ${PREFIX}/bin
.for doc in ${HTML_DOCS}
	${INSTALL_DATA} ${WRKBUILD}/doc/${doc}.html ${PREFIX}/share/doc/ffmpeg
.endfor
	mv -f ${PREFIX}/share/ffmpeg/examples/* ${PREFIX}/share/examples/ffmpeg
	-rmdir ${PREFIX}/share/ffmpeg/examples

.include <bsd.port.mk>
