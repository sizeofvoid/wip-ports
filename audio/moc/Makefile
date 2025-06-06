COMMENT =	console audio player

DIST_TUPLE+=	gitlab tomaszg mocp fb0a63b564b40fa861204e2f804b696c6ee573da .
PKGNAME =	moc-2.6alpha3
CATEGORIES =	audio
REVISION =	2

# GPLv3+
PERMIT_PACKAGE = Yes

# uses pledge()
WANTLIB += ${COMPILER_LIBCXX} FLAC X11 X11-xcb Xext Xfixes aom
WANTLIB += avcodec avformat avutil bz2 c crypto curl curses dav1d
WANTLIB += drm faad gsm iconv id3tag intl ltdl lzma m mad magic
WANTLIB += modplug mp3lame mpcdec mpg123 nghttp2 nghttp3 ngtcp2
WANTLIB += ngtcp2_crypto_quictls ogg opus popt samplerate sharpyuv
WANTLIB += sndfile sndio speex ssl swresample tag tag_c theoradec
WANTLIB += theoraenc va va-drm va-x11 vorbis vorbisenc vorbisfile
WANTLIB += vpx wavpack webp webpmux x264 x265 xcb xcb-dri3 xml2
WANTLIB += xvidcore z

COMPILER =	base-clang ports-gcc

# iconv.m4
BUILD_DEPENDS+=	devel/gettext,-tools

RUN_DEPENDS+=	devel/desktop-file-utils \
		x11/gtk+4,-guic

LIB_DEPENDS =	audio/faad \
		audio/flac \
		audio/lame \
		audio/libid3tag \
		audio/libmad \
		audio/libmodplug \
		audio/libogg \
		audio/libsamplerate \
		audio/libsndfile \
		audio/libvorbis \
		audio/mpg123 \
		audio/musepack \
		audio/opus \
		audio/speex \
		audio/taglib \
		audio/wavpack \
		converters/libiconv \
		devel/libmagic \
		devel/libtool,-ltdl \
		devel/popt \
		graphics/ffmpeg \
		net/curl

AUTOCONF_VERSION=	2.71
AUTOMAKE_VERSION=	1.16
SEPARATE_BUILD = Yes
CONFIGURE_STYLE = autoreconf
CONFIGURE_ARGS += \
		--disable-cache \
		--without-jack \
		--without-oss \
		--without-alsa \
		--without-mpg123 \
		--without-mpris \
		--without-opus \
		--without-pulse \
		--without-rcc \
		--without-included-ltdl \
		--without-timidity \
		--with-magic \
		--with-ltdl-include=${LOCALBASE}/include \
		--with-ltdl-lib=${LOCALBASE}/lib
CONFIGURE_ENV = CPPFLAGS="-Wno-unused-but-set-parameter -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

pre-install:
	${SUBST_CMD} ${WRKSRC}/mocp.1

post-install:
	rm ${PREFIX}/lib/moc/decoder_plugins/*.{,l}a
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/moc
.for f in config.example keymap.example
	mv ${PREFIX}/share/doc/moc/$f ${PREFIX}/share/examples/moc
.endfor

.include <bsd.port.mk>
