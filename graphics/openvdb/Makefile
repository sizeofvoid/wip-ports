# devel/tbb does not support 64-bits atomics on ppc32, forcing them does
# not help, see tbb's ${WRKSRC}/include/tbb/machine/mac_ppc.h
NOT_FOR_ARCHS =	powerpc

COMMENT=	tools for storage and manipulation of volumetric data

GH_ACCOUNT=	AcademySoftwareFoundation
GH_PROJECT=	openvdb
GH_TAGNAME=	v12.0.1

SHARED_LIBS +=  openvdb                   6.0 # 9.0

CATEGORIES=	graphics

HOMEPAGE=	https://www.openvdb.org/

# MPL
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} blosc boost_iostreams-mt boost_random-mt
WANTLIB += boost_regex-mt boost_system-mt c m tbb tbbmalloc z

COMPILER=	base-clang ports-gcc

MODULES=	devel/cmake

LIB_DEPENDS=	archivers/blosc \
		devel/boost \
		devel/tbb

NO_TEST=	Yes

.include <bsd.port.mk>
