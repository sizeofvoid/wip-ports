COMMENT=	tool to measure TCP throughput
DISTNAME=	netstrain-3.0
CATEGORIES=	benchmarks net
SITES=		${SITE_SOURCEFORGE:=netstrain/}
REVISION =	1

HOMEPAGE=	https://netstrain.sourceforge.net/

# ISC-like
PERMIT_PACKAGE=	Yes
WANTLIB=		c

NO_TEST=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/netstrain
	${INSTALL_DATA} ${WRKBUILD}/README ${PREFIX}/share/doc/netstrain
	${INSTALL_PROGRAM} ${WRKBUILD}/netstraind ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/netstrain ${PREFIX}/bin

.include <bsd.port.mk>
