COMMENT =	a replacement for gpg which can encrypt/sign/verify

DISTNAME =	opmsg-1.78s
EXTRACT_SUFX =	.tgz
REVISION =	2

FIX_EXTRACT_PERMISSIONS = Yes

CATEGORIES =	security

HOMEPAGE =	https://github.com/stealth/opmsg

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c crypto m

SITES =			http://stealth.openwall.net/opmsg/

COMPILER =		base-clang ports-gcc

WRKDIST =		${WRKDIR}/opmsg
WRKSRC =		${WRKDIST}/src

NO_TEST =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/opmsg ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/opmsg
	${INSTALL_DATA} ${WRKDIST}/README.md ${PREFIX}/share/doc/opmsg/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/opmsg
	${INSTALL_DATA} ${WRKDIST}/sample.config \
		${PREFIX}/share/examples/opmsg/sample.config

.include <bsd.port.mk>
