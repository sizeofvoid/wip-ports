COMMENT =	kirigami component gallery application
DISTNAME =	kirigami-gallery-${VERSION}

CATEGORIES =	devel

HOMEPAGE =	https://apps.kde.org/de/kirigami2.gallery/

MODKDE_KF5 =	Yes

WANTLIB += ${COMPILER_LIBCXX} KF5ItemModels KF5Kirigami2 Qt5Core
WANTLIB += Qt5Gui Qt5Network Qt5Qml Qt5QmlModels Qt5Quick Qt5QuickControls2
WANTLIB += Qt5Svg Qt5Widgets c m

MODKDE_DESKTOP_FILE = yes
MODKDE_TRANSLATIONS = yes

BUILD_DEPENDS =	devel/kf5/kpackage

RUN_DEPENDS =	devel/kf5/kpackage \
		devel/kf6/breeze-icons \
		devel/kf5/qqc2-desktop-style \
		x11/qt5/qtquickcontrols

LIB_DEPENDS =	devel/kf5/kitemmodels \
		devel/kf5/kirigami2 \
		x11/qt5/qtsvg \
		x11/qt5/qtdeclarative \
		x11/qt5/qtquickcontrols2

.include <bsd.port.mk>
