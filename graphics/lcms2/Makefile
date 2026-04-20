COMMENT =		color management library

DISTNAME =		lcms2-2.18pl20260420
COMMIT =		f8425ad6ab6fc4c7c8a52187a700a8b38d92e012
DIST_TUPLE =		github mm2 Little-CMS ${COMMIT} .
CATEGORIES =		graphics

SHARED_LIBS +=  lcms2                3.0      # 2.19

HOMEPAGE =		https://www.littlecms.com/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =  ${COMPILER_LIBCXX} Lerc c jpeg lzma m pthread tiff z zstd

COMPILER =	base-clang ports-gcc base-gcc

LIB_DEPENDS =	graphics/tiff

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

WRKDIST =		${WRKDIR}/Little-CMS-${COMMIT}

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
