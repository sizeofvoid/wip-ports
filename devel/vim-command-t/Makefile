BROKEN-sparc64 =	extconf.rb fails trying to find stdalign.h

COMMENT =		fast, intuitive file opening in VIM

V =			1.11.2
DISTNAME =		vim-command-t-${V}
REVISION =		11

CATEGORIES =		devel editors

HOMEPAGE =		https://wincent.com/products/command-t

# BSD2
PERMIT_PACKAGE =	Yes

WANTLIB +=		c m ${MODRUBY_WANTLIB}

SITES =			https://spacehopper.org/mirrors/

MODULES =		lang/ruby

RUN_DEPENDS =		vim-*-ruby:editors/vim,no_x11,ruby

NO_TEST =		Yes
WRKDIST =		${WRKDIR}/.vim

# We don't like vimballs as DISTFILES.
# This target converts the upstream vimball to a tarball which we then
# host ourselves.
VIMBALL_ARCHIVE = command-t-${V}.vba
VIMBALL_PATH = http://s3.wincent.com/command-t/releases/${VIMBALL_ARCHIVE}
vim2tar:
	cd ${DISTDIR} && ftp ${VIMBALL_PATH}
	mkdir -p ${WRKDIR}
	HOME=${WRKDIR} ${LOCALBASE}/bin/vim \
	     --cmd ":set nocp" \
	     --cmd ":runtime vimballPlugin.vim" \
	     -c ":silent so %" \
	     -c ":qa" \
	     ${DISTDIR}/${VIMBALL_ARCHIVE}
	rm ${DISTDIR}/${VIMBALL_ARCHIVE}
	cd ${WRKDIR} && \
		tar zcf ${DISTDIR}/vim-command-t-${V}${EXTRACT_SUFX} .vim

# Some parts written in C for speed. Builds a ruby extension.
do-build:
	cd ${WRKBUILD}/ruby/command-t && ${RUBY} extconf.rb && \
		${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS}

# This is hardcoded for now. If a vim.port.mk appears, move there.
RUNTIMEDIR =	${PREFIX}/share/vim/vimfiles

do-install:
	rm ${WRKBUILD}/ruby/command-t/watchman.c${PATCHORIG} \
		${WRKBUILD}/.VimballRecord \
		${WRKBUILD}/ruby/command-t/*.{o,h,c}
	${INSTALL_DATA_DIR} ${RUNTIMEDIR}
	cd ${WRKBUILD} && pax -rw . ${RUNTIMEDIR}
	sort -c ${RUNTIMEDIR}/doc/tags
	mv ${RUNTIMEDIR}/doc/tags ${RUNTIMEDIR}/doc/vim-command-t.tags

.include <bsd.port.mk>
