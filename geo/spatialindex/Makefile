BROKEN-sparc64 = error: 'raise' was not declared in this scope

COMMENT =	library for spatial indexing and querying
V =		2.1.0
DISTNAME =	spatialindex-src-${V}
PKGNAME =	${DISTNAME:S/-src//}
CATEGORIES =	geo
SHARED_LIBS =	spatialindex 5.0 \
		spatialindex_c 2.1

# MIT
PERMIT_PACKAGE =	Yes

HOMEPAGE =	https://libspatialindex.org/
SITES =		https://github.com/libspatialindex/libspatialindex/releases/download/${V}/

MODULES =	devel/cmake

WANTLIB =	m pthread ${COMPILER_LIBCXX}

COMPILER =	base-clang ports-gcc base-gcc

# has a bundled gtest 1.14
CONFIGURE_ARGS +=	-DBUILD_TESTING=ON

post-extract:
	cd ${WRKSRC}/test && find . -name '*.sh' -o -name run | xargs sed -i -e 's#bin/bash#bin/sh#'

.include <bsd.port.mk>
