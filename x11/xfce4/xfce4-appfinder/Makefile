COMMENT=	Xfce4 application finder

XFCE_PROJECT=	xfce4-appfinder
REVISION=	0

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE=	Yes

CONFIGURE_ARGS= --disable-linker-opts
LIB_DEPENDS=	x11/xfce4/garcon>=0.3.0 \
		x11/xfce4/libxfce4ui>=4.9.0 \
		x11/xfce4/xfconf>=4.13.0

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0
WANTLIB += c cairo cairo-gobject epoxy expat ffi fontconfig freetype
WANTLIB += fribidi garcon-1 gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-3
WANTLIB += harfbuzz iconv intl m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre2-8 pixman-1 png pthread startup-notification-1 xcb
WANTLIB += xcb-render xcb-shm xcb-util xfce4ui-2 xfce4util xfconf-0
WANTLIB += Xau Xdmcp atspi dbus-1 jpeg z
WANTLIB += epoll-shim wayland-client wayland-cursor wayland-egl
WANTLIB += xkbcommon
WANTLIB += ${COMPILER_LIBCXX}

.include <bsd.port.mk>
