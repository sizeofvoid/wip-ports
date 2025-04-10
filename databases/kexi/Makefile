#Qt5Webkit
USE_WXNEEDED =		Yes

COMMENT =	visual database applications creator

VERSION =	3.2.0
DISTNAME =	kexi-${VERSION}
REVISION =	7

SHARED_LIBS +=  kexicore3.2               0.0 # 3.2
SHARED_LIBS +=  kexidatatable3.2          0.0 # 3.2
SHARED_LIBS +=  kexidataviewcommon3.2     0.0 # 3.2
SHARED_LIBS +=  kexiextendedwidgets3.2    0.0 # 3.2
SHARED_LIBS +=  kexiformutils3.2          0.0 # 3.2
SHARED_LIBS +=  kexiguiutils3.2           0.0 # 3.2
SHARED_LIBS +=  keximain3.2               0.0 # 3.2
SHARED_LIBS +=  keximigrate3.2            0.0 # 3.2
SHARED_LIBS +=  kexirelationsview3.2      0.0 # 3.2
SHARED_LIBS +=  kexiundo3.2               0.0 # 3.2
SHARED_LIBS +=  kexiutils3.2              0.0 # 3.2
SHARED_LIBS +=  kformdesigner3.2          0.0 # 3.2

CATEGORIES =	databases

HOMEPAGE =	http://www.kexi-project.org

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# LGPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL KDb3 KF5Auth KF5AuthCore KF5Bookmarks
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5Crash KF5GuiAddons
WANTLIB += KF5I18n KF5IconThemes KF5ItemViews KF5JobWidgets KF5KIOCore
WANTLIB += KF5KIOFileWidgets KF5KIOGui KF5KIOWidgets KF5Parts
WANTLIB += KF5Service KF5Solid KF5SonnetUi KF5SyntaxHighlighting
WANTLIB += KF5TextEditor KF5TextWidgets KF5WidgetsAddons KF5WindowSystem
WANTLIB += KF5XmlGui KPropertyCore3 KPropertyWidgets3 KReport3
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB += Qt5Widgets Qt5Xml X11 c glib-2.0 iconv m mariadb

SITES =		${SITE_KDE:=stable/kexi/src/}
EXTRACT_SUFX =	.tar.xz

MODULES =		devel/cmake \
			devel/kf5

BUILD_DEPENDS =		databases/postgresql,-server \
			devel/gettext,-tools \
			devel/kf6/breeze-icons \
			devel/kf5/karchive

RUN_DEPENDS =		devel/desktop-file-utils \
			devel/kf6/breeze-icons \
			devel/kf5/kservice

LIB_DEPENDS =		databases/kdb>=3.2.0 \
			devel/kf5/kcodecs \
			devel/kf5/kcompletion \
			devel/kf5/kconfig \
			devel/kf5/kconfigwidgets \
			devel/kf5/kcoreaddons \
			devel/kf5/kguiaddons \
			devel/kf5/ki18n \
			devel/kf5/kiconthemes \
			devel/kf5/kio \
			devel/kf5/kitemviews \
			devel/kf5/ktexteditor \
			devel/kf5/ktextwidgets \
			devel/kf5/kwidgetsaddons \
			devel/kf5/kxmlgui \
			devel/kproperty>=3.2.0 \
			devel/kreport>=3.2.0 \
			databases/mariadb

CONFIGURE_ARGS =	-DBUILD_TESTING=On \
			-DBUILD_EXAMPLES=On \
			-DKEXI_QTGUI_RUNTIME_AVAILABLE=On \
			-DKEXI_ENABLE_QTGUI_FOR_TESTS=Off

CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_Qt5WebKit=ON
CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_Qt5WebKitWidgets=ON
CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_Git=ON

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
