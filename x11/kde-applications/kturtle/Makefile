COMMENT =	KDE educational Logo programming environment
DISTNAME =	kturtle-${VERSION}
CATEGORIES =	games

HOMEPAGE =	https://www.kde.org/applications/games/kturtle

WANTLIB += ${COMPILER_LIBCXX} GL KF6Attica KF6ColorScheme KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6CoreAddons KF6Crash
WANTLIB += KF6GuiAddons KF6I18n KF6KIOCore KF6NewStuffCore KF6NewStuffWidgets
WANTLIB += KF6SonnetUi KF6TextWidgets KF6WidgetsAddons KF6XmlGui
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6PrintSupport Qt6Svg
WANTLIB += Qt6SvgWidgets Qt6Widgets Qt6Xml c m

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes
MODKDE_DOCS = yes

LIB_DEPENDS =	devel/kf6/attica \
		devel/kf6/kcolorscheme \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/ki18n \
		devel/kf6/kguiaddons \
		devel/kf6/kio \
		devel/kf6/knewstuff \
		devel/kf6/ktextwidgets \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui \
		devel/kf6/sonnet \
		x11/qt6/qtsvg

.include <bsd.port.mk>
