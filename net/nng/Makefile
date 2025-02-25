COMMENT =	lightweight brokerless messaging library

VERSION =	1.10.1
DISTNAME =	nng-${VERSION}

DIST_TUPLE +=	github nanomsg nng v${VERSION} .

SHARED_LIBS +=	nng                       0.0 # 0.0

CATEGORIES =	net devel

HOMEPAGE =	https://nng.nanomsg.org/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =		devel/cmake

CONFIGURE_ARGS =	-DBUILD_SHARED_LIBS=ON

.include <bsd.port.mk>
