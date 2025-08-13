COMMENT =	BSON utility library

V =		2.1.0
DISTNAME =	libbson-${V}

DIST_TUPLE +=	github mongodb mongo-c-driver ${V} .

SHARED_LIBS +=	bson2                     0.0 # 0.0

CATEGORIES =	devel database

HOMEPAGE =	https://github.com/mongodb/mongo-c-driver

# Apache-2.0
PERMIT_PACKAGE =	Yes

WANTLIB += m pthread

MODULES =		devel/cmake

CONFIGURE_ARGS =	-DBSON_HAVE_STRINGS_H=0

CONFIGURE_ARGS +=	-DBUILD_TESTING=OFF \
			-DENABLE_EXAMPLES=OFF \
			-DENABLE_ICU=OFF \
			-DENABLE_MONGOC=OFF \
			-DENABLE_TESTS=OFF \
			-DENABLE_UNINSTALL=OFF \
			-DENABLE_ZLIB=OFF \
			-DENABLE_ZSTD=OFF

WRKDIST =		${WRKDIR}/mongo-c-driver-${V}

post-install:
	rm -rf ${PREFIX}/share/mongo-c-driver

.include <bsd.port.mk>
