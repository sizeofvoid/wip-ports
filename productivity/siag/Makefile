COMMENT=		tightly integrated, free office package

VERSION=		3.6.1
DISTNAME=		siag-${VERSION}
REVISION=		7
CATEGORIES=		productivity x11

HOMEPAGE=		http://siag.nu/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ICE Mowitz SM X11 Xext Xmu Xpm Xt c curses m neXtaw

SITES=			${HOMEPAGE}/pub/siag/

LIB_DEPENDS=		x11/mowitz \
			x11/neXtaw

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS+=	--with-docdir=${PREFIX}/share/doc/siag/

CONFIGURE_ENV+=		LDFLAGS="-L${WRKBUILD}/common -L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
