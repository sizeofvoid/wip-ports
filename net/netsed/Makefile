COMMENT=		network sed

DISTNAME=		netsed
PKGNAME=		${DISTNAME}-0.01c
REVISION=		1
CATEGORIES=    		net
EXTRACT_SUFX=		.tgz

HOMEPAGE=		http://lcamtuf.coredump.cx/

# GPL
PERMIT_PACKAGE=	Yes
WANTLIB=		c

SITES=			http://lcamtuf.coredump.cx/soft/

MAKE_FLAGS=		CFLAGS="-Wall ${CFLAGS}"

USE_GMAKE=		Yes

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/netsed ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/netsed
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/netsed

.include <bsd.port.mk>
