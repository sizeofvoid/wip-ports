COMMENT=		front-end to ssh-agent and gpg-agent

DISTNAME=		keychain-2.8.5
CATEGORIES=		security

HOMEPAGE=		https://www.funtoo.org/Keychain

# GPLv2
PERMIT_PACKAGE=	Yes

SITES=			http://www.funtoo.org/archive/keychain/
EXTRACT_SUFX=		.tar.bz2

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

do-install:
	${INSTALL_SCRIPT} ${WRKDIST}/keychain ${PREFIX}/bin
	${INSTALL_MAN} ${WRKDIST}/keychain.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
