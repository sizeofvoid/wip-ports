COMMENT=	Zangband (Zelazny Angband) with color, X11 support

VERSION=	2.6.2
DISTNAME=	zangband-${VERSION}
REVISION =	7
CATEGORIES=	games
SITES=		${SITE_SOURCEFORGE:=zangband/}

PERMIT_PACKAGE=	Yes

WANTLIB=		c curses

USE_GMAKE=		Yes
MAKE_ENV=		CC="${CC}" CFLAGS="${CFLAGS}"

AUTOCONF_VERSION=	2.54
AUTOMAKE_VERSION=	1.4
AUTORECONF=		autoreconf -i
CONFIGURE_STYLE=	autoreconf
CONFIGURE_ENV=		TRUEPREFIX="${TRUEPREFIX}"

WRKDIST=		${WRKDIR}/zangband

FLAVORS=		no_x11
FLAVOR?=	

.if !${FLAVOR:Mno_x11}
CONFIGURE_ARGS+=	--with-x
WANTLIB+=		ICE SM X11 Xaw Xmu Xt xcb
.else
CONFIGURE_ARGS+=	--without-x
.endif

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/zangband
	(cd ${WRKDIST}/lib && tar -cf - * ) | \
	   (cd ${PREFIX}/share/zangband && tar -xf - )
	@chown -R ${SHAREOWN}:games ${PREFIX}/share/zangband
	@find ${PREFIX} \( -name Makefile\* -o -name delete.me \) -delete
	${INSTALL} -s -o ${BINOWN} -g games -m 2555 ${WRKSRC}/src/zangband \
	   ${PREFIX}/bin

.include <bsd.port.mk>
