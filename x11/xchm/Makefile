COMMENT=	display chm files

V=		1.37
DISTNAME=	xchm-$V

CATEGORIES=	devel textproc x11

HOMEPAGE=	https://github.com/rzvncj/xCHM

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += c chm m wx_baseu-3.2 wx_baseu_net-3.2 wx_baseu_xml-3.2
WANTLIB += wx_gtk3u_aui-3.2 wx_gtk3u_core-3.2
WANTLIB += wx_gtk3u_html-3.2 wx_gtk3u_qa-3.2 wx_gtk3u_xrc-3.2

SITES=		https://github.com/rzvncj/xCHM/releases/download/$V/

LIB_DEPENDS=	devel/chmlib \
		x11/wxWidgets

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+4,-guic

COMPILER=	base-clang ports-gcc base-gcc

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

NO_TEST=	Yes

.include <bsd.port.mk>
