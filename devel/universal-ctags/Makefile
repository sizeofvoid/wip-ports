COMMENT =	multilanguage reimplementation of the Unix ctags utility

V =		6.1.0
DISTNAME =	universal-ctags-${V}

CATEGORIES =	devel

HOMEPAGE =	https://ctags.io/

SITES =	https://github.com/universal-ctags/ctags/releases/download/v${V}/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

WANTLIB += c m pcre2-8 pthread xml2 yaml-0

# GPLv2
PERMIT_PACKAGE =	Yes

USE_GMAKE =		Yes
CONFIGURE_STYLE = 	autoreconf

# emulate git rev-parse --short HEAD
REV =			"${GH_COMMIT:C/^(.{7}).*/\1/}"
MAKE_FLAGS =		CC="${CC}" \
			CFLAGS="${CFLAGS}" \
			V=1 \
			REV="${REV}"

CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib ${LDFLAGS}"

CONFIGURE_ARGS =	--program-prefix=u --disable-json

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.11
AUTORECONF =		./autogen.sh

BUILD_DEPENDS =		textproc/py-docutils

LIB_DEPENDS +=		textproc/libxml \
			devel/libyaml \
			devel/pcre2

TEST_DEPENDS =		textproc/gdiff \
			sysutils/coreutils

FLAVORS=		iconv aspell
FLAVOR?=

.if ${FLAVOR:Miconv}
WANTLIB += iconv
CONFIGURE_ARGS+=	--enable-iconv
LIB_DEPENDS+=		converters/libiconv
.else
CONFIGURE_ARGS+=	--disable-iconv
.endif

.if ${FLAVOR:Maspell}
WANTLIB += aspell
CONFIGURE_ARGS+=	--enable-aspell
LIB_DEPENDS+=		textproc/aspell/core
# textproc/aspell does not install a aspell.pc file
CONFIGURE_ENV +=	ASPELL_LIBS="-L${LOCALBASE}/lib -laspell" \
			ASPELL_CFLAGS="-I${LOCALBASE}/include"
.else
CONFIGURE_ARGS+=	--disable-aspell
.endif

pre-test:
	ln -sf ${LOCALBASE}/bin/gdiff ${WRKDIR}/bin/diff
	ln -sf ${LOCALBASE}/bin/gsort ${WRKDIR}/bin/sort

.include <bsd.port.mk>
