COMMENT=	archive and compress your old email

VERSION=	0.9.0
DISTNAME=	archivemail-${VERSION}
CATEGORIES=	mail

# GPLv2+
PERMIT_PACKAGE=	Yes

SITES=		${SITE_SOURCEFORGE:=archivemail/}

MODULES=	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

SUBST_VARS=	VERSION
PKG_ARCH=	*

do-test:
		@cd ${WRKSRC} && ${MAKE_ENV} ${MODPY_BIN} ./test_archivemail

.include <bsd.port.mk>
