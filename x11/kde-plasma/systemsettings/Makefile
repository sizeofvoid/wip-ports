COMMENT =	KDE Plasma control center
DISTNAME =	systemsettings-${VERSION}
PKGNAME =	kf6-systemsettings-${VERSION}

SHARED_LIBS +=  systemsettingsview        1.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6AuthCore KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6Crash KF6DBusAddons KF6GuiAddons KF6I18n KF6I18nQml
WANTLIB += KF6IconThemes KF6ItemModels KF6ItemViews KF6JobWidgets
WANTLIB += KF6KCMUtils KF6KCMUtilsCore KF6KCMUtilsQuick KF6KIOCore
WANTLIB += KF6KIOGui KF6KIOWidgets KF6Runner KF6Service KF6Solid
WANTLIB += KF6WidgetsAddons KF6WindowSystem KF6XmlGui PlasmaActivities
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6OpenGL Qt6Qml
WANTLIB += Qt6QmlMeta Qt6QmlModels Qt6QmlWorkerScript Qt6Quick
WANTLIB += Qt6QuickWidgets Qt6Widgets Qt6Xml X11 c m

MODKDE_TRANSLATIONS =	Yes
MODKDE_DOCS = Yes

BUILD_DEPENDS =	devel/kf6/kdeclarative \
		devel/kf6/kirigami

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/kf6/kirigami \
		devel/kf6/kdeclarative \
		sysutils/lscpu \
		graphics/vulkan-tools

RUN_DEPENDS +=	x11/kde-plasma/plasma-integration>=${VERSION}

LIB_DEPENDS =	devel/kf6/kcmutils \
		devel/kf6/kauth \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kdbusaddons \
		devel/kf6/kguiaddons \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/kio \
		devel/kf6/kitemmodels \
		devel/kf6/kitemviews \
		devel/kf6/kjobwidgets \
		devel/kf6/krunner \
		devel/kf6/kservice \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/kxmlgui \
		devel/kf6/solid \
		x11/kde-plasma/plasma-activities>=${VERSION} \
		x11/qt6/qtdeclarative

TEST_IS_INTERACTIVE =	X11

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
