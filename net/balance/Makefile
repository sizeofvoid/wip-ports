COMMENT=		TCP proxy with load balancing and failover mechanisms

DISTNAME =		balance-3.57
CATEGORIES=		net

HOMEPAGE=		http://www.inlab.de/balance.html

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=		c

SITES=			http://www.inlab.de/

MAKE_FLAGS=		CC="${CC}" CFLAGS="${CFLAGS}"
ALL_TARGET=		balance

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/balance ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/balance.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/balance
	${INSTALL_DATA} ${WRKSRC}/balance.pdf ${PREFIX}/share/doc/balance

.include <bsd.port.mk>
