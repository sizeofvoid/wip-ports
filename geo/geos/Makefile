COMMENT=	2d geometry and topology engine
DISTNAME=	geos-3.13.1

CATEGORIES=	geo

MAINTAINER =	Landry Breuil <landry@openbsd.org>

SHARED_LIBS=	geos	26.0 \
		geos_c	4.9

# LGPLv2.1
PERMIT_PACKAGE=	Yes

HOMEPAGE=		https://libgeos.org/
SITES=			https://download.osgeo.org/geos/

EXTRACT_SUFX=		.tar.bz2

WANTLIB=	c m ${COMPILER_LIBCXX}

# cf https://trac.osgeo.org/geos/wiki/RFC7
MODULES =	devel/cmake

# uses C++11, cf https://trac.osgeo.org/geos/wiki/RFC5
COMPILER =	base-clang ports-gcc

# evertyhing except tests
ALL_TARGET =	geosop

# build whatever is left (ca. 277 C++ test files)
pre-test:
	@${MODCMAKE_BUILD_TARGET}

.include <bsd.port.mk>
