COMMENT =	ZIP password cracker

DISTNAME =	fcrackzip-1.0
REVISION =	2
CATEGORIES =	security archivers

HOMEPAGE =	http://home.schmorp.de/marc/fcrackzip.html

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB +=	c

SITES =		http://home.schmorp.de/data/marc/

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.61

# for the --use-unzip option
RUN_DEPENDS =	archivers/unzip

do-install:
	${INSTALL_MAN} ${WRKSRC}/fcrackzip.1 ${PREFIX}/man/man1
	${INSTALL_PROGRAM} ${WRKSRC}/fcrackzip ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/zipinfo ${PREFIX}/bin/fcrackzipinfo

.include <bsd.port.mk>
