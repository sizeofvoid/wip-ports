COMMENT =		the missing terminal file browser for X

V =			5.1
DISTNAME =		nnn-v${V}
PKGNAME =		nnn-${V}

CATEGORIES =		sysutils

HOMEPAGE =		https://github.com/jarun/nnn/

MAINTAINER =		Martin Ziemer <horrad@horrad.de>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =		c curses pthread readline

SITES =			https://github.com/jarun/nnn/releases/download/v${V}/

# Uses -std=c11 so cannot use base-gcc
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

RUN_DEPENDS =		textproc/gsed

MAKE_FLAGS =		CFLAGS_OPTIMIZATION=
FAKE_FLAGS =		MANPREFIX="$(PREFIX)/man" \
			PREFIX="${PREFIX}"

FLAVORS =		nerd
FLAVOR ?=

.if ${FLAVOR:Mnerd}
MAKE_FLAGS +=		O_NERD=1
.endif

USE_GMAKE =		Yes
NO_TEST =		Yes

WRKDIST =		${WRKDIR}/nnn-${V}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/bash-completion/completions/
	${INSTALL_DATA} ${WRKSRC}/misc/auto-completion/bash/nnn-completion.bash \
		${PREFIX}/share/bash-completion/completions/nnn
	${INSTALL_DATA_DIR} ${PREFIX}/share/fish/vendor_completions.d/
	${INSTALL_DATA} ${WRKSRC}/misc/auto-completion/fish/nnn.fish \
		${PREFIX}/share/fish/vendor_completions.d/
	${INSTALL_DATA_DIR} ${PREFIX}/share/zsh/site-functions/
	${INSTALL_DATA} ${WRKSRC}/misc/auto-completion/zsh/_nnn \
		${PREFIX}/share/zsh/site-functions/

.include <bsd.port.mk>
