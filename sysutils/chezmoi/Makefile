COMMENT =		dotfiles manager across multiple diverse machines

MODGO_MODNAME =		github.com/twpayne/chezmoi/v2
MODGO_VERSION =		v2.62.4

DISTNAME =		chezmoi-${MODGO_VERSION}

CATEGORIES =		sysutils

HOMEPAGE =		https://www.chezmoi.io/

MAINTAINER =		Paco Esteban <paco@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += 		c pthread

MODULES =		lang/go

MODGO_LDFLAGS +=	-X "main.version=${MODGO_VERSION}" \
			-X "main.builtBy=OpenBSD-ports"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/zsh/site-functions
	${INSTALL_DATA} ${WRKSRC}/completions/chezmoi.zsh \
		${PREFIX}/share/zsh/site-functions/_chezmoi

	${INSTALL_DATA_DIR} ${PREFIX}/share/fish/vendor_completions.d
	${INSTALL_DATA} ${WRKSRC}/completions/chezmoi.fish \
		${PREFIX}/share/fish/vendor_completions.d/chezmoi.fish

	${INSTALL_DATA_DIR} ${PREFIX}/share/bash-completion/completions
	${INSTALL_DATA} ${WRKSRC}/completions/chezmoi-completion.bash \
		${PREFIX}/share/bash-completion/completions/chezmoi

.include "modules.inc"

.include <bsd.port.mk>
