COMMENT =	hierarchical todos manager

DISTNAME =	tudu-0.10.4

CATEGORIES =	productivity

HOMEPAGE =	https://code.meskio.net/tudu/

# GPLv3 only
PERMIT_PACKAGE =	Yes

WANTLIB +=	${COMPILER_LIBCXX} c m curses

COMPILER =	base-clang ports-gcc base-gcc

SITES =		${HOMEPAGE}

CONFIGURE_STYLE = simple

CONFIGURE_ARGS = --sysconfdir=${SYSCONFDIR} \
		 --mandir=${PREFIX}/man

FAKE_FLAGS =	SYSCONFDIR=${TRUEPREFIX}/share/examples/tudu

NO_TEST =	Yes

post-extract:
	# locale::facet::_S_create_c_locale throws in non-C locales
	sed -i '/locale(""));/d' ${WRKSRC}/src/*.cc

.include <bsd.port.mk>
