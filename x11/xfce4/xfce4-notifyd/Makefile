COMMENT=	Xfce4 notification daemon

XFCE_VERSION=	0.9.7
XFCE_GOODIE=	xfce4-notifyd
REVISION=	0

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE=	Yes
MODXFCE_ICON_CACHE=	Yes
MODXFCE_PURGE_LA =	lib/xfce4/panel/plugins
MODXFCE_WANTLIB =	xfce4panel-2.0

LIB_DEPENDS=	x11/xfce4/xfce4-panel \
		devel/libnotify
CONFIGURE_ARGS =	--enable-dbus-start-daemon \
		--disable-sound

FAKE_FLAGS =	autostartdir=${PREFIX}/share/examples/xfce4-notifyd

WANTLIB += ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += atk-1.0 atspi c cairo dbus-1 expat ffi fontconfig
WANTLIB += freetype gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 jpeg m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre2-8 pixman-1 png pthread
WANTLIB += sqlite3 startup-notification-1 xcb xcb-util xcb-render
WANTLIB += xcb-shm xfce4ui-2 xfce4util xfconf-0 z
WANTLIB += harfbuzz graphite2 notify iconv intl fribidi
WANTLIB += atk-bridge-2.0 cairo-gobject epoxy gdk-3 gtk-3
WANTLIB += epoll-shim wayland-client wayland-cursor wayland-egl
WANTLIB += xkbcommon gtk-layer-shell
WANTLIB += ${COMPILER_LIBCXX}

.include <bsd.port.mk>
