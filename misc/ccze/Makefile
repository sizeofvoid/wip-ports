COMMENT=	log colorizer

DISTNAME=	ccze-0.2.1
REVISION=	4
CATEGORIES=	misc

MAINTAINER=	Robert Nagy <robert@openbsd.org>

SITES=		https://distfiles.bsdfrog.org/

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB=		c curses pcre

LIB_DEPENDS=	devel/pcre

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-builtins=all

pre-fake:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ccze
	${WRKSRC}/src/ccze-dump > ${PREFIX}/share/examples/ccze/cczerc

.include <bsd.port.mk>
