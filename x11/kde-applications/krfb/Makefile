COMMENT =	desktop sharing
DISTNAME =	krfb-${VERSION}
CATEGORIES =	net x11

SHARED_LIBS +=  krfbprivate               3.0 # 5.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6CoreAddons KF6DBusAddons
WANTLIB += KF6DNSSD KF6I18n KF6Notifications KF6StatusNotifierItem
WANTLIB += KF6Wallet KF6WidgetsAddons KF6WindowSystem KF6XmlGui
WANTLIB += KPipeWire KPipeWireDmaBuf KWaylandClient Qt6Core Qt6DBus
WANTLIB += Qt6Gui Qt6Network Qt6Widgets Qt6Xml X11 Xdamage Xext
WANTLIB += Xtst c m pipewire-0.3 vncserver wayland-client xcb
WANTLIB += xcb-damage xcb-image xcb-render xcb-shape xcb-shm xcb-xfixes
WANTLIB += xkbcommon

HOMEPAGE =	https://kde.org/applications/internet/org.kde.krfb

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes
MODKDE_DOCS = yes

BUILD_DEPENDS =	wayland/libinput-openbsd \
		wayland/wayland-protocols \
		wayland/plasma-wayland-protocols

LIB_DEPENDS =	devel/kf6/kcolorscheme \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kdbusaddons \
		devel/kf6/kdnssd \
		devel/kf6/ki18n \
		devel/kf6/knotifications \
		devel/kf6/kstatusnotifieritem \
		devel/kf6/kwallet \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/kxmlgui \
		multimedia/pipewire/pipewire,-libs \
		net/libvncserver \
		wayland/wayland \
		x11/kde-plasma/kpipewire\
		x11/kde-plasma/kwayland \
		x11/xkbcommon

CXXFLAGS +=	-I${LOCALBASE}/include -DNONETWORK=0

.include <bsd.port.mk>
