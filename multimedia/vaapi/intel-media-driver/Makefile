COMMENT =	Intel(R) Media Driver for VAAPI

VERSION =	24.1.5
GH_ACCOUNT =	intel
GH_PROJECT =	media-driver
GH_TAGNAME =	intel-media-${VERSION}

DISTNAME =	intel-media-driver-${VERSION}

CATEGORIES = graphics multimedia

# MIT & BSD-3-Clause
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c drm execinfo igdgmm m

MODULES =	devel/cmake

LIB_DEPENDS =	devel/intel-gmmlib

# XXX Unbundle googletest
CONFIGURE_ARGS =	-DMEDIA_RUN_TEST_SUITE=ON

CONFIGURE_ARGS +=	-DMEDIA_BUILD_FATAL_WARNINGS=OFF \
			-DBUILD_CMRTLIB=OFF

MODCMAKE_LDFLAGS = -L${X11BASE}/lib -L${LOCALBASE}/lib -lc
CXXFLAGS = -I${X11BASE}/include

.include <bsd.port.mk>
