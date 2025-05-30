COMMENT =	powerful batch file renamer

VERSION =	5.0.2
DISTNAME =	krename-${VERSION}
REVISION =	3

CATEGORIES =	sysutils x11

HOMEPAGE =	https://apps.kde.org/krename/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Bookmarks
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5Crash KF5I18n KF5IconThemes
WANTLIB += KF5ItemViews KF5JSApi KF5JobWidgets KF5KIOCore KF5KIOFileWidgets
WANTLIB += KF5KIOGui KF5KIOWidgets KF5Service KF5Solid KF5WidgetsAddons
WANTLIB += KF5WindowSystem KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5Widgets Qt5Xml c exiv2 freetype
WANTLIB += m podofo tag z X11

SITES =		${SITE_KDE:=stable/krename/${VERSION}/src/}

MODULES =	devel/kf5

BUILD_DEPENDS =	devel/gettext,-tools

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/kf6/breeze-icons \
		x11/gtk+4,-guic

LIB_DEPENDS =	audio/taglib \
		graphics/exiv2 \
		textproc/podofo \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kitemviews \
		devel/kf5/kjobwidgets \
		devel/kf5/kjs \
		devel/kf5/kio \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui

.include <bsd.port.mk>
