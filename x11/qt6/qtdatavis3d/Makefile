QT6NAME =	QtDataVis3D
COMMENT =	Qt6 3D data visualization components
PKGSPEC =	qt6-qtdatavis3d-${QT6_PKGSPEC}

SHARED_LIBS +=  Qt6DataVisualization      2.0 # 6.7
SHARED_LIBS +=  Qt6DataVisualizationQml   1.0 # 6.7

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Network Qt6OpenGL
WANTLIB += Qt6Qml Qt6QmlModels Qt6Quick c m

LIB_DEPENDS =	x11/qt6/qtdeclarative

.include <bsd.port.mk>
