COMMENT=	Google WebP image format conversion tool

GH_ACCOUNT=	webmproject
GH_PROJECT=	libwebp
GH_TAGNAME=	v1.6.0
REVISION=	0
CATEGORIES=	graphics

SHARED_LIBS +=  sharpyuv             0.1      # 0.0
SHARED_LIBS +=  webp                 4.4      # 6.0
SHARED_LIBS +=  webpdecoder          2.2      # 2.0
SHARED_LIBS +=  webpdemux            2.0      # 2.0
SHARED_LIBS +=  webpmux              2.1      # 2.0

HOMEPAGE=	https://developers.google.com/speed/webp/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	${COMPILER_LIBCXX} Lerc c gif jpeg lzma m png pthread \
		tiff z zstd

COMPILER=	base-clang ports-gcc base-gcc

LIB_DEPENDS=	graphics/giflib \
		graphics/jpeg \
		graphics/png \
		graphics/tiff

AUTOCONF_VERSION=	2.72
AUTOMAKE_VERSION=	1.17

CONFIGURE_STYLE=	autoreconf

CONFIGURE_ARGS= --enable-everything

# this will use libSDL to build stuff under extras otherwise
# (a static webp viewer which is more or less useless, and not
# even installed by default)
CONFIGURE_ARGS +=--disable-gl \
		--disable-sdl

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

DEBUG_PACKAGES=	${BUILD_PACKAGES}

NO_TEST=	Yes

.include <bsd.port.mk>
