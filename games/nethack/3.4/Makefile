COMMENT =	dungeon explorin', hackin', game.  Piece of cake
V =		3.4.3
DISTNAME =	nethack-$V
PKGNAME =	${DISTNAME}
REVISION =	18
CATEGORIES =	games

SITES =		${SITE_SOURCEFORGE:=nethack/}
DISTFILES =	nethack-${V:S/.//g}-src.tgz

HOMEPAGE =	http://nethack.org/

MAINTAINER =	Marc Espie <espie@openbsd.org>

# GPL
PERMIT_PACKAGE =	Yes

WANTLIB +=	c curses

FAKE_FLAGS =	PREFIX=${PREFIX}

GAMEDIR =	lib/nethackdir-$V
NHDIR =		${TRUEPREFIX}/${GAMEDIR}
MAKE_ENV += 	NHDIR=${NHDIR} NETHACKCONFIG=${NETHACKCONFIG}

FLAVORS =	no_x11
FLAVOR ?=

.if ${FLAVOR} == "no_x11"
NETHACKCONFIG =	${FILESDIR}/simple-config
EXT=,no_x11
.else
NETHACKCONFIG =	${FILESDIR}/x-config
EXT=
WANTLIB +=	X11 Xaw Xext Xmu Xpm Xt xcb
.endif

RUN_DEPENDS =	games/hackdata

NO_TEST =	Yes
SUBST_VARS =	GAMEDIR V EXT

do-configure:
	@cd ${WRKSRC}/sys/unix; /bin/sh setup.sh symlinks

post-build:
	@cd ${WRKSRC}/util && ${MAKE_ENV} make recover

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nethack-$V
	${INSTALL_DATA} ${WRKSRC}/doc/Guidebook.txt \
		${PREFIX}/share/doc/nethack-$V/Guidebook.txt
	${INSTALL_PROGRAM} ${WRKBUILD}/util/recover ${PREFIX}/bin/recover-$V
	${INSTALL_MAN} ${WRKSRC}/doc/nethack.6 ${PREFIX}/man/man6/nethack-$V.6
	${INSTALL_MAN} ${WRKSRC}/doc/recover.6 ${PREFIX}/man/man6/recover-$V.6
	${INSTALL_PROGRAM} ${PREFIX}/bin/nethack ${PREFIX}/bin/nethack-$V
.if ${FLAVOR} == ""
	${INSTALL_DATA_DIR} ${PREFIX}/lib/X11/app-defaults
	@cd ${WRKSRC}/win/X11 && cp NetHack.ad NetHack-$V && \
	    ${INSTALL_DATA} NetHack-$V ${PREFIX}/lib/X11/app-defaults
.endif

.include <bsd.port.mk>
