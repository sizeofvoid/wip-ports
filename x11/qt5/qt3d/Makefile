QT5NAME =		Qt3D
COMMENT-main =		Qt5 components for 3D graphics

KDE_COMMIT =		1eecf07a4d5dadd1b5aaf785fc2a5ed03565599d
KDE_VERSION =		3

MULTI_PACKAGES =	-main -examples

SHARED_LIBS +=  Qt53DCore                    3.0 # 5.9
SHARED_LIBS +=  Qt53DInput                   2.0 # 5.9
SHARED_LIBS +=  Qt53DLogic                   2.0 # 5.9
SHARED_LIBS +=  Qt53DQuick                   2.0 # 5.9
SHARED_LIBS +=  Qt53DQuickInput              2.0 # 5.9
SHARED_LIBS +=  Qt53DQuickRender             2.0 # 5.9
SHARED_LIBS +=  Qt53DRender                  3.0 # 5.9
SHARED_LIBS +=  Qt53DAnimation               1.0 # 5.9
SHARED_LIBS +=  Qt53DExtras                  1.0 # 5.9
SHARED_LIBS +=  Qt53DQuickAnimation          1.0 # 5.9
SHARED_LIBS +=  Qt53DQuickExtras             1.0 # 5.9
SHARED_LIBS +=  Qt53DQuickScene2D            1.0 # 5.9

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Concurrent Qt5Core Qt5Gamepad
WANTLIB += Qt5Gui Qt5Network Qt5OpenGLExtensions Qt5Qml Qt5Quick
WANTLIB += Qt5QmlModels assimp c m

BUILD_DEPENDS =		x11/qt5/qtmultimedia>=${QT5_VERSION:R},<${QT5_NEXT_VERSION}
RUN_DEPENDS-examples =	x11/qt5/qtmultimedia>=${QT5_VERSION:R},<${QT5_NEXT_VERSION}

LIB_DEPENDS =		multimedia/assimp>=3.3.2 \
			x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION} \
			x11/qt5/qtgamepad>=${QT5_VERSION},<${QT5_NEXT_VERSION}

CONFIGURE_ARGS +=	-assimp=system

FLAVORS =		debug

MODQMAKE_RECURSIVE =	No

pre-configure:
	${QT5_GEN_INCLUDES}

.include <bsd.port.mk>
