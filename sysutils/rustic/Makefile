# ring-v0.17 does not support this arch
NOT_FOR_ARCHS =		sparc64

COMMENT =		fast, encrypted, deduplicated backups
REVISION =		0

DIST_TUPLE =		github rustic-rs rustic v0.9.5 .

CATEGORIES =		sysutils

MAINTAINER =		Bjorn Ketelaars <bket@openbsd.org>

HOMEPAGE =		https://rustic.cli.rs

# Apache-2.0 / MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		${MODCARGO_WANTLIB} m zstd

MODULES =		devel/cargo
MODCARGO_RUSTFLAGS =	-L${PREFIX}/lib

LIB_DEPENDS =		archivers/zstd

CONFIGURE_STYLE =	cargo

SEPARATE_BUILD =	Yes

post-build:
.for s in bash fish zsh
	cd ${WRKBUILD}/target/release && \
		./rustic completions $s > rustic.$s
.endfor

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/target/release/rustic ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/rustic \
		${PREFIX}/share/bash-completion/completions \
		${PREFIX}/share/fish/vendor_completions.d \
		${PREFIX}/share/zsh/site-functions
	${INSTALL_DATA} ${WRKBUILD}/target/release/rustic.bash \
		${PREFIX}/share/bash-completion/completions/rustic
	${INSTALL_DATA} ${WRKBUILD}/target/release/rustic.fish \
		${PREFIX}/share/fish/vendor_completions.d/
	${INSTALL_DATA} ${WRKBUILD}/target/release/rustic.zsh \
		${PREFIX}/share/zsh/site-functions/_rustic
	cd ${WRKSRC}/config; pax -rw . ${PREFIX}/share/examples/rustic/

.include "crates.inc"
.include <bsd.port.mk>
