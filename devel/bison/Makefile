COMMENT=	GNU parser generator

DISTNAME=	bison-3.8.2
REVISION=	0
CATEGORIES=	devel
SITES=		${SITE_GNU:=bison/}
EXTRACT_SUFX=	.tar.xz

HOMEPAGE=	https://www.gnu.org/software/bison/

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB=	c iconv intl m pthread

LIB_DEPENDS=	devel/gettext,-runtime
BUILD_DEPENDS=	devel/gettext,-tools \
		devel/help2man \
		devel/m4
RUN_DEPENDS=	devel/m4

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	ac_cv_prog_VALGRIND=no \
		ac_cv_path_XSLTPROC=no
CONFIGURE_ARGS=	--disable-yacc
# Avoid crashes because of bad interactions between bison, libtextstyle
# from devel/gettext and ncurses
CONFIGURE_ARGS+= --without-libtextstyle-prefix
DEBUG_PACKAGES=	${BUILD_PACKAGES}
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build-aux

.include <bsd.port.mk>
