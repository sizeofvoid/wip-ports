COMMENT=	free lossless audio codec

VERSION=	1.5.0
DISTNAME=	flac-${VERSION}
CATEGORIES=	audio archivers
HOMEPAGE=	https://www.xiph.org/flac/
SHARED_LIBS +=  FLAC                 14.0     # 14.0
SHARED_LIBS +=  FLAC++               12.0     # 11.0

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

SITES=		https://downloads.xiph.org/releases/flac/ \
		https://github.com/xiph/flac/releases/download/${VERSION}/
EXTRACT_SUFX=	.tar.xz

WANTLIB=	c iconv m ogg ${COMPILER_LIBCXX}

COMPILER =	base-clang ports-gcc

LIB_DEPENDS=	audio/libogg converters/libiconv

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-doxygen-docs \
		--disable-thorough-tests
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

DEBUG_PACKAGES=	${BUILD_PACKAGES}

.include <bsd.port.mk>
