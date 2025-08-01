# ring-v0.17 does not support this arch
NOT_FOR_ARCHS =		sparc64

COMMENT =		Python package and project manager

GH_ACCOUNT =		astral-sh
GH_PROJECT =		uv
GH_TAGNAME =		0.8.3

ASYNC_ZIP =		c909fda63fcafe4af496a07bfda28a5aae97e58d
PUBGRUB =		06ec5a5f59ffaeb6cf5079c6cb184467da06c9db
REQWEST_MIDDLEWARE =	ad8b9d332d1773fde8b4cd008486de5973e0a3f8
TL =			6e25b2ee2513d75385101a8ff9f591ef51f314ec

DIST_TUPLE +=	github astral-sh rs-async-zip ${ASYNC_ZIP} ../rs-async-zip
DIST_TUPLE +=	github astral-sh pubgrub ${PUBGRUB} ../pubgrub
DIST_TUPLE +=	github astral-sh reqwest-middleware ${REQWEST_MIDDLEWARE} \
		../reqwest-middleware
DIST_TUPLE +=	github astral-sh tl ${TL} ../tl

CATEGORIES =		devel

# https://github.com/astral-sh/uv
HOMEPAGE =		https://docs.astral.sh/uv/

MAINTAINER =		Laurent Cheylus <foxy@free.fr>

# MIT or Apache2.0
PERMIT_PACKAGE =	Yes

LIB_DEPENDS +=		archivers/bzip2 \
			archivers/zstd

WANTLIB =		${MODCARGO_WANTLIB} bz2 m zstd

MODULES =		devel/cargo
CONFIGURE_STYLE =	cargo

# Annoying static dependencies throughout crates/*/Cargo.toml...
MODCARGO_CRATES_KEEP =	lzma-sys

SEPARATE_BUILD =	Yes

post-build:
	${MODCARGO_TARGET_DIR}/release/uv -n --generate-shell-completion bash \
		> ${WRKBUILD}/uv.bash
	${MODCARGO_TARGET_DIR}/release/uv -n --generate-shell-completion fish \
		> ${WRKBUILD}/uv.fish
	${MODCARGO_TARGET_DIR}/release/uv -n --generate-shell-completion zsh \
		> ${WRKBUILD}/uv.zsh

do-install:
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/uv ${PREFIX}/bin/
	# uvx is a shell script to exec 'uv tool run'
	${SUBST_PROGRAM} ${FILESDIR}/uvx ${PREFIX}/bin/uvx

	${INSTALL_DATA_DIR} \
		${PREFIX}/share/bash-completion/completions \
		${PREFIX}/share/fish/vendor_completions.d \
		${PREFIX}/share/zsh/site-functions
	${INSTALL_DATA} ${WRKBUILD}/uv.bash \
		${PREFIX}/share/bash-completion/completions/uv
	${INSTALL_DATA} ${WRKBUILD}/uv.fish \
		${PREFIX}/share/fish/vendor_completions.d/uv.fish
	${INSTALL_DATA} ${WRKBUILD}/uv.zsh \
		${PREFIX}/share/zsh/site-functions/_uv

.include "crates.inc"

.include <bsd.port.mk>
