COMMENT=	Xfce4 gnome-shell like dashboard

XFCE_GOODIE =	xfdashboard
XFCE_VERSION =	1.0.0
SHARED_LIBS +=	xfdashboard	1.0 # 900.0
REVISION =	4

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += EGL ICE SM X11 X11-xcb XRes Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 c
WANTLIB += cairo cairo-gobject clutter-1.0 cogl cogl-pango cogl-path
WANTLIB += ${COMPILER_LIBCXX} drm epoxy expat ffi fontconfig freetype
WANTLIB += fribidi garcon-1 gbm gdk-3 gdk_pixbuf-2.0 gio-2.0 glapi
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-3
WANTLIB += harfbuzz iconv intl json-glib-1.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre2-8 pixman-1 png pthread startup-notification-1
WANTLIB += wnck-3 xcb xcb-dri2 xcb-dri3 xcb-present xcb-render xcb-shm
WANTLIB += xcb-sync xcb-util xcb-xfixes xfce4ui-2 xfce4util xfconf-0
WANTLIB += xshmfence z xcb-randr epoll-shim wayland-client wayland-cursor
WANTLIB += wayland-egl xkbcommon Xau Xdmcp jpeg atspi dbus-1

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE=	Yes
MODXFCE_ICON_CACHE=	Yes
MODXFCE_PURGE_LA=	lib/xfdashboard/plugins

LIB_DEPENDS =	graphics/clutter/core \
		x11/xfce4/xfconf \
		x11/xfce4/garcon \
		x11/xfce4/libxfce4ui \
		x11/gtk+3 \
		devel/libwnck3

FAKE_FLAGS =	autostartdir=${PREFIX}/share/examples/xfdashboard/

.include <bsd.port.mk>
