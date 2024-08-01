COMMENT =	components relating to pipewire use in Plasma
DISTNAME =	kpipewire-${VERSION}
REVISION =	1

SHARED_LIBS +=  KPipeWire                 0.0 # 0.0
SHARED_LIBS +=  KPipeWireDmaBuf           0.0 # 0.0
SHARED_LIBS +=  KPipeWireRecord           0.0 # 0.0

MODKDE_TRANSLATIONS =	Yes

WANTLIB += ${COMPILER_LIBCXX} EGL GL KF6CoreAddons KF6I18n Qt6Core
WANTLIB += Qt6Gui Qt6Network Qt6OpenGL Qt6Qml Qt6QmlModels Qt6Quick
WANTLIB += avcodec avfilter avformat avutil drm epoxy gbm m pipewire-0.3
WANTLIB += swscale va va-drm xkbcommon

RUN_DEPENDS =	multimedia/pipewire/pipewire

BUILD_DEPENDS =	wayland/plasma-wayland-protocols

LIB_DEPENDS =	devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		graphics/ffmpeg \
		multimedia/pipewire/pipewire,-libs \
		x11/qt6/qtdeclarative \
		x11/xkbcommon

TEST_IS_INTERACTIVE =	X11

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
