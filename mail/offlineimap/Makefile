COMMENT=	powerful IMAP/Maildir synchronization and reader support

MODPY_DISTV =	8.0.0
DISTNAME =	offlineimap-${MODPY_DISTV}pl20231218

GH_ACCOUNT =	OfflineIMAP
GH_PROJECT =	offlineimap3
GH_COMMIT =	d29a4dc459401f8a78e347cb0f8ae7670add0975
REVISION =	3

CATEGORIES=	mail

HOMEPAGE=	https://www.offlineimap.org/

# GPLv2+
PERMIT_PACKAGE=	Yes

NO_TEST=	Yes

MODULES=	lang/python

MODPY_PYBUILD=	setuptools

BUILD_DEPENDS=	textproc/asciidoc \
		devel/py-rfc6555 \
		mail/py-imaplib2 \
		security/py-keyring \
		sysutils/py-distro

RUN_DEPENDS=	devel/py-rfc6555 \
		mail/py-imaplib2 \
		sysutils/py-distro \
		security/py-keyring

EXAMPLESDIR=	${PREFIX}/share/examples/offlineimap

post-build:
	${LOCALBASE}/bin/a2x -f manpage ${WRKSRC}/docs/offlineimap.txt
	${LOCALBASE}/bin/a2x -f manpage ${WRKSRC}/docs/offlineimapui.txt

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/offlineimap.conf{,.minimal} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/docs/offlineimap.1 ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/docs/offlineimapui.7 ${PREFIX}/man/man7

.include <bsd.port.mk>
