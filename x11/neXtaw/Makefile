COMMENT=		libXaw widget set replacement

DISTNAME=		neXtaw-0.15.1
REVISION=		3

SHARED_LIBS +=	neXtaw               15.1     # .15.1
CATEGORIES=		x11 devel

HOMEPAGE=		http://siag.nu/neXtaw/

# X11
PERMIT_PACKAGE=	Yes

WANTLIB=  ICE SM X11 Xau Xdmcp Xext Xmu Xt pthread xcb

SITES=			http://siag.nu/pub/neXtaw/

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		CPPFLAGS="-I${X11BASE}/include"

.include <bsd.port.mk>
