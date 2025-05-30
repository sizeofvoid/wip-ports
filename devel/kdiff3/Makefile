COMMENT =	compares and merges multiple files or directories

DISTNAME =	kdiff3-1.12.3

CATEGORIES =	devel

HOMEPAGE =	https://kde.org/applications/development/kdiff3/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

SITES =		${SITE_KDE:=stable/kdiff3/}
EXTRACT_SUFX =	.tar.xz

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6Crash KF6GuiAddons KF6I18n KF6JobWidgets KF6KIOCore
WANTLIB += KF6KIOGui KF6KIOWidgets KF6Service KF6Solid KF6WidgetsAddons
WANTLIB += KF6XmlGui Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6PrintSupport
WANTLIB += Qt6Widgets Qt6Xml c icuuc m

MODULES =	devel/kf6

BUILD_DEPENDS =	devel/boost \
		devel/gettext,-tools \
		devel/kf6/kbookmarks \
		devel/kf6/kdoctools

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/kf6/kbookmarks \
		devel/kf6/kdoctools \
		x11/gtk+4,-guic

LIB_DEPENDS =	devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kguiaddons \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kjobwidgets \
		devel/kf6/kservice \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui \
		devel/kf6/solid \
		textproc/icu4c

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
