COMMENT=	text-based calendar and scheduling application

DISTNAME=	calcurse-4.8.1
EPOCH=		0
REVISION=	1

CATEGORIES=	productivity

HOMEPAGE=	https://calcurse.org/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c curses iconv intl m pthread

SITES=		${HOMEPAGE}files/

RUN_DEPENDS=	www/py-httplib2

LIB_DEPENDS=	devel/gettext,-runtime

MODULES=	lang/python

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--without-asciidoc

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/calcurse
	${INSTALL_DATA} ${WRKSRC}/contrib/caldav/config.sample \
		${PREFIX}/share/examples/calcurse/caldav.config.sample

.include <bsd.port.mk>
