COMMENT =	git remote helper to interact with mercurial repositories

GH_ACCOUNT =	glandium
GH_PROJECT =	git-cinnabar
GH_TAGNAME =	0.7.2
CATEGORIES =	devel

# patches are applied to this version
DIST_TUPLE +=	github git-for-windows git cca1f38702730b35f52c29efd62864b85e85ddcc git-core

# MPL-2.0
PERMIT_PACKAGE =	Yes

MODULES =		devel/cargo
CONFIGURE_STYLE =	cargo

LIB_DEPENDS =	net/curl \
		archivers/zstd \
		archivers/bzip2
RUN_DEPENDS =	devel/mercurial
BUILD_DEPENDS =	devel/gmake

WANTLIB +=	${MODCARGO_WANTLIB} bz2 curl z zstd

# so that git can use git-cinnabar by default as a remote hg handler
post-install:
	ln -sf ${TRUEPREFIX}/bin/git-cinnabar ${PREFIX}/bin/git-remote-hg

.include "crates.inc"

.include <bsd.port.mk>
