COMMENT =	internet radio browser and player
GH_TAGNAME =	v7.3
GH_ACCOUNT =	haecker-felix
GH_PROJECT =	Gradio
DISTNAME =	${GH_PROJECT:L}-${GH_TAGNAME:S/^v//}
EPOCH =		0
REVISION =	2

CATEGORIES =	audio www

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gtk-3 intl json-glib-1.0 pango-1.0 pangocairo-1.0
WANTLIB += soup-2.4 sqlite3 m

LIB_DEPENDS =		devel/json-glib \
			devel/libsoup \
			multimedia/gstreamer1/plugins-base \
			x11/gtk+3

MODULES =		devel/meson \
			textproc/intltool

BUILD_DEPENDS +=	lang/vala

LDFLAGS =		-L${LOCALBASE}/lib

.include <bsd.port.mk>
