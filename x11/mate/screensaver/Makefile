COMMENT=		MATE screensaver

REVISION=		0

MATE_PROJECT=		mate-screensaver

# LGPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += GL ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xss Xxf86vm atk-1.0 atk-bridge-2.0
WANTLIB += c cairo cairo-gobject dbus-1 dbus-glib-1 dconf drm epoxy
WANTLIB += expat ffi fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glapi glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-3 harfbuzz iconv intl lzma m mate-desktop-2
WANTLIB += mate-menu matekbd matekbdui notify pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre2-8 pixman-1 png pthread startup-notification-1
WANTLIB += xcb xcb-dri2 xcb-dri3 xcb-glx xcb-present xcb-render xcb-shm
WANTLIB += xcb-sync xcb-util xcb-xfixes xkbfile xklavier xml2 xshmfence
WANTLIB += z
WANTLIB += ${COMPILER_LIBCXX} Xau Xdmcp execinfo jpeg
WANTLIB += atspi epoll-shim wayland-client wayland-cursor wayland-egl
WANTLIB += xcb-randr xkbcommon

MODULES=		devel/dconf \
			x11/gnome

LIB_DEPENDS=		devel/libnotify \
			x11/dbus-glib \
			x11/mate/desktop \
			x11/mate/libmatekbd \
			x11/mate/menus

RUN_DEPENDS=		x11/mate/session-manager

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS=		--enable-authentication-scheme=bsdauth

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache

FAKE_FLAGS=		menudir=${PREFIX}/share/examples/mate-screensaver/xdg/menus

post-install:
	@mv ${WRKINST}/etc/xdg/autostart \
		${PREFIX}/share/examples/mate-screensaver/xdg/autostart
	# prevent conflict with desktop file shipped with xscreensaver
	@mv ${PREFIX}/share/applications/screensavers/{,mate-}popsquares.desktop

.include <bsd.port.mk>
