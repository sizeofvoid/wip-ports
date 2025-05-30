COMMENT =	dungeon explorin', hackin', game.  Piece of cake
V =		3.6.6
# what we have compatible with
BASEV =		3.6.0
DISTNAME =	nethack-$V
PKGNAME =	${DISTNAME}
CATEGORIES =	games
SITES =		https://www.nethack.org/download/$V/
DISTFILES =	nethack-${V:S/.//g}-src.tgz
REVISION =	1

HOMEPAGE =	http://nethack.org/

MAINTAINER =	Marc Espie <espie@openbsd.org>
WANTLIB +=	c curses

FLAVORS = no_x11
FLAVOR ?=

.if ${FLAVOR} == "no_x11"
CONFIG = 	simple-config
.else
CONFIG =		x-config
WANTLIB += X11 Xaw Xext Xmu Xt
.endif
RUN_DEPENDS = games/hackdata
WRKDIST =	${WRKDIR}/NetHack-NetHack-$V_Released

# GPL
PERMIT_PACKAGE =	Yes

# The game dir name actually refers to the base version
# we're compatible with
GAMEDIR = lib/nethackdir-${BASEV}
GAMEGRP = _nethack36

FIX_EXTRACT_PERMISSIONS = Yes
MAKE_ENV = GAMEDIR=${GAMEDIR} FILESDIR=${FILESDIR} GAMEGRP=$(GAMEGRP) \
	CONFIG=$(CONFIG) V=$V


SUBST_VARS += GAMEDIR V GAMEGRP BASEV

NO_TEST =	Yes

post-patch:
	@cp ${FILESDIR}/qt_xpms.h ${WRKSRC}/include/qt_xpms.h

pre-configure:
	ln -s ${FILESDIR}/openbsd ${WRKSRC}/sys/unix/hints/openbsd

do-configure:
	@cd ${WRKSRC}/sys/unix; /bin/sh setup.sh hints/openbsd

MAN= nethack recover #lev_comp dgn_comp

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nethack-$V
	${INSTALL_DATA} ${WRKSRC}/doc/Guidebook.txt \
		${PREFIX}/share/doc/nethack-$V/Guidebook.txt
.if ${FLAVOR} == ""
	${INSTALL_DATA_DIR} ${PREFIX}/lib/X11/app-defaults
	@${INSTALL_DATA} ${WRKSRC}/win/X11/NetHack.ad \
	    ${PREFIX}/lib/X11/app-defaults/NetHack-$V
.endif
	ln -s ${TRUEPREFIX}/${GAMEDIR}/recover ${PREFIX}/bin/recover-$V
.for i in $(MAN)
	${WRKBUILD}/util/makedefs --grep --input ${WRKSRC}/doc/$i.6 \
		--output ${PREFIX}/man/man6/$i-$V.6
.endfor

.include <bsd.port.mk>
