COMMENT =	KDE helper for multithreaded programming
DISTNAME =	threadweaver-${VERSION}

SHARED_LIBS =	KF5ThreadWeaver		6.0

WANTLIB += ${COMPILER_LIBCXX} Qt5Core m

CONFIGURE_ARGS +=	-DCMAKE_POLICY_VERSION_MINIMUM=3.5

.include <bsd.port.mk>
