COMMENT=	free MPEG-2 video stream decoder

DISTNAME=	libmpeg2-0.5.1
REVISION=	5
SHARED_LIBS=	mpeg2		0.1 \
		mpeg2convert	0.0
CATEGORIES=	graphics x11
SITES=		${HOMEPAGE}files/

HOMEPAGE=	https://libmpeg2.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=	ICE SM X11 Xext Xv c pthread xcb

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.61
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS+=--disable-sdl
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/.auto

NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libmpeg2
	${INSTALL_DATA} ${WRKSRC}/doc/libmpeg2.txt \
	    ${PREFIX}/share/doc/libmpeg2
	${INSTALL_DATA} ${WRKSRC}/README \
	    ${PREFIX}/share/doc/libmpeg2

.include <bsd.port.mk>
