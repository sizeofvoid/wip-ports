COMMENT=	draws a graph of CPU usage of a certain process

DISTNAME=	pscpug035
PKGNAME=	pscpug-0.3.5
REVISION=	3
CATEGORIES=	sysutils

HOMEPAGE=	http://www.diablonet.net/~mercadal/projects/pscpug/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c curses kvm m

SITES=		${HOMEPAGE}
EXTRACT_SUFX=	.tgz

CONFIGURE_STYLE=gnu

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pscpug ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/pscpug.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
