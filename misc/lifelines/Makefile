COMMENT=		genealogical database and programming system
DISTNAME=		lifelines-3.0.62
CATEGORIES=		misc
SITES=			${SITE_SOURCEFORGE:=lifelines/}
REVISION=		4

HOMEPAGE=		https://lifelines.sourceforge.net/

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB =  c curses iconv intl m pthread

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		YACC="bison -y" \
			LDFLAGS="-L/usr/local/lib" \
			LIBS="-liconv -lintl"
BUILD_DEPENDS=		devel/bison
LIB_DEPENDS=		devel/gettext,-runtime
USE_GMAKE=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/lifelines
	${INSTALL_DATA} ${FILESDIR}/linesrc ${PREFIX}/share/examples/lifelines

.include <bsd.port.mk>
