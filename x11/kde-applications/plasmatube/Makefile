COMMENT =	YouTube/Invidious player
DISTNAME =	plasmatube-${VERSION}
CATEGORIES =	multimedia net x11

WANTLIB += ${COMPILER_LIBCXX} GL KF6ConfigCore KF6ConfigGui KF6CoreAddons
WANTLIB += KF6DBusAddons KF6I18n KF6WindowSystem MpvQt Qt6Concurrent
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6OpenGL Qt6Qml
WANTLIB += Qt6QmlMeta Qt6QmlModels Qt6QmlWorkerScript Qt6Quick
WANTLIB += Qt6QuickControls2 Qt6Widgets X11 c m mpv qt6keychain

MODKDE_DESKTOP_FILE =	Yes
MODKDE_ICON_CACHE =	Yes
MODKDE_TRANSLATIONS =	Yes

BUILD_DEPENDS =	devel/kf6/kirigami \
		devel/kf6/purpose \
		devel/kf6/qqc2-desktop-style \
		graphics/kirigami-addons

RUN_DEPENDS =	devel/kf6/kirigami \
		devel/kf6/purpose \
		devel/kf6/qqc2-desktop-style \
		graphics/kirigami-addons

LIB_DEPENDS =	devel/kf6/kconfig \
		devel/kf6/kcoreaddons \
		devel/kf6/kdbusaddons \
		devel/kf6/ki18n \
		devel/kf6/kwindowsystem \
		multimedia/mpvqt \
		security/qtkeychain,qt6 \
		x11/qt6/qtdeclarative

.include <bsd.port.mk>
