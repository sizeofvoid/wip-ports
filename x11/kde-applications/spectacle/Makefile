COMMENT =	KDE screen capture and screenshot program
DISTNAME =	spectacle-${VERSION}
CATEGORIES =	x11

HOMEPAGE =	https://apps.kde.org/spectacle/

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKDE_DOCS = yes

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6DBusAddons KF6GlobalAccel KF6GuiAddons KF6I18n KF6JobWidgets
WANTLIB += KF6KIOCore KF6KIOGui KF6KIOWidgets KF6Notifications
WANTLIB += KF6Purpose KF6PurposeWidgets KF6Service KF6Solid KF6WidgetsAddons
WANTLIB += KF6WindowSystem KF6XmlGui KPipeWire KPipeWireRecord
WANTLIB += KirigamiPlatform LayerShellQtInterface Qt6Concurrent
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6OpenGL Qt6PrintSupport
WANTLIB += Qt6Qml Qt6QmlModels Qt6Quick Qt6QuickControls2 Qt6QuickTemplates2
WANTLIB += Qt6WaylandClient Qt6Widgets Qt6Xml X11 ZXing c m opencv_core
WANTLIB += opencv_imgproc wayland-client wayland-cursor xcb xcb-cursor
WANTLIB += xcb-image xcb-randr xcb-render xcb-shape xcb-shm xcb-util
WANTLIB += xcb-xfixes xkbcommon

BUILD_DEPENDS =	wayland/libinput-openbsd \
		wayland/wayland-protocols \
		wayland/plasma-wayland-protocols

LIB_DEPENDS =	devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kdbusaddons \
		devel/kf6/kglobalaccel \
		devel/kf6/kguiaddons \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kirigami \
		devel/kf6/kjobwidgets \
		devel/kf6/knotifications \
		devel/kf6/kservice \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/kxmlgui \
		devel/kf6/purpose \
		devel/kf6/solid \
		graphics/opencv \
		graphics/zxing-cpp \
		wayland/wayland \
		x11/kde-plasma/kpipewire \
		x11/kde-plasma/layer-shell-qt \
		x11/qt6/qtdeclarative \
		x11/qt6/qtwayland \
		x11/xkbcommon


post-install:
	${MODPY_COMPILEALL} \
		${PREFIX}/share/kconf_update/50-clipboard_settings_change.py

.include <bsd.port.mk>
