COMMENT =		color management library

DISTNAME =		lcms2-2.16
CATEGORIES =		graphics
SITES =			${SITE_SOURCEFORGE:=lcms/}
REVISION =		1

SHARED_LIBS +=  lcms2                2.0      # 2.16

HOMEPAGE =		https://www.littlecms.com/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =  ${COMPILER_LIBCXX} Lerc c jpeg lzma m pthread tiff z zstd

COMPILER =	base-clang ports-gcc base-gcc

LIB_DEPENDS =	graphics/tiff

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
