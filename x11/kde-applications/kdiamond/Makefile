COMMENT =	three-in-a-row game
DISTNAME =	kdiamond-${VERSION}
CATEGORIES =	games

HOMEPAGE =	https://www.kde.org/applications/games/kdiamond

WANTLIB += ${COMPILER_LIBCXX} GL KDEGames6 KF6ColorScheme KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6CoreAddons KF6Crash
WANTLIB += KF6DBusAddons KF6GuiAddons KF6I18n KF6IconThemes KF6Notifications
WANTLIB += KF6NotifyConfig KF6WidgetsAddons KF6XmlGui Qt6Core
WANTLIB += Qt6DBus Qt6Gui Qt6Network Qt6Qml Qt6Widgets Qt6Xml
WANTLIB += c m

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes
MODKDE_DOCS = yes

LIB_DEPENDS =	devel/kf6/kcolorscheme \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kdbusaddons \
		devel/kf6/ki18n \
		devel/kf6/kguiaddons \
		devel/kf6/knotifications \
		devel/kf6/knotifyconfig \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui \
		devel/kf6/kiconthemes \
		x11/kde-applications/libkdegames>=${VERSION} \
		x11/qt6/qtdeclarative

.include <bsd.port.mk>
