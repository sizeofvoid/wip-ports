COMMENT=	Xfce4 volume mixer

XFCE_GOODIE=	xfce4-mixer
XFCE_VERSION=	4.18.2

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE=	Yes
MODXFCE_PURGE_LA =	lib/xfce4/panel/plugins

WANTLIB += ${COMPILER_LIBCXX} ICE SM X11 X11-xcb Xcomposite Xcursor
WANTLIB += Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0
WANTLIB += atk-bridge-2.0 atspi c cairo cairo-gobject dbus-1
WANTLIB += epoxy expat ffi fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gstreamer-1.0 sndio gthread-2.0 gtk-3 harfbuzz iconv intl
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre2-8 pixman-1
WANTLIB += png startup-notification-1 xcb xcb-render xcb-shm xcb-util
WANTLIB += xfce4panel-2.0 xfce4ui-2 xfce4util xfconf-0 z
WANTLIB += Xau Xdmcp execinfo jpeg
WANTLIB += epoll-shim gtk-layer-shell wayland-client wayland-cursor
WANTLIB += wayland-egl xkbcommon

LIB_DEPENDS=	multimedia/gstreamer1/core \
		x11/xfce4/xfce4-panel

CONFIGURE_ARGS+=	--disable-linker-opts
CONFIGURE_ARGS+=	--disable-keybinder
CONFIGURE_ARGS+=	--disable-pulse

.include <bsd.port.mk>
