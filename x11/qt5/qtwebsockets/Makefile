QT5NAME =		QtWebSockets
COMMENT-main =		Qt5 implementation of WebSocket protocol

KDE_COMMIT =		dbbdc64b804f7c4d0ed92198aaab49b07fa15e7f
KDE_VERSION =		2

SHARED_LIBS +=  Qt5WebSockets                3.0 # 5.9

MULTI_PACKAGES =	-main -examples

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Network Qt5Qml m

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

pre-configure:
	${QT5_GEN_INCLUDES}

.include <bsd.port.mk>
