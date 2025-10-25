# qmlplugindump
USE_WXNEEDED =	Yes

QT6NAME =	QtDeclarative
COMMENT =	Qt6 Quick and QML components
PKGSPEC =	qt6-qtdeclarative-${QT6_PKGSPEC}

SHARED_LIBS =   Qt6Qml                    8.0 # 6.7
SHARED_LIBS +=  Qt6Quick                  9.0 # 6.7
SHARED_LIBS +=  Qt6QuickParticles         4.0 # 6.7
SHARED_LIBS +=  Qt6QuickTest              4.0 # 6.7
SHARED_LIBS +=  Qt6QuickWidgets           5.0 # 6.7
SHARED_LIBS +=  Qt6QuickShapes            4.0 # 6.7
SHARED_LIBS +=  Qt6QmlModels              6.0 # 6.7
SHARED_LIBS +=  Qt6QmlWorkerScript        3.0 # 6.7
SHARED_LIBS +=  Qt6LabsAnimation          3.0 # 6.7
SHARED_LIBS +=  Qt6LabsFolderListModel    3.0 # 6.7
SHARED_LIBS +=  Qt6LabsQmlModels          3.0 # 6.7
SHARED_LIBS +=  Qt6LabsSettings           3.0 # 6.7
SHARED_LIBS +=  Qt6LabsSharedImage        3.0 # 6.7
SHARED_LIBS +=  Qt6LabsWavefrontMesh      3.0 # 6.7
SHARED_LIBS +=  Qt6QmlCore                4.0 # 6.7
SHARED_LIBS +=  Qt6QmlLocalStorage        3.0 # 6.7
SHARED_LIBS +=  Qt6QmlXmlListModel        3.0 # 6.7
SHARED_LIBS +=  Qt6QuickControls2         4.0 # 6.7
SHARED_LIBS +=  Qt6QuickControls2Impl     3.0 # 6.7
SHARED_LIBS +=  Qt6QuickDialogs2          4.0 # 6.7
SHARED_LIBS +=  Qt6QuickDialogs2QuickImpl 5.0 # 6.7
SHARED_LIBS +=  Qt6QuickDialogs2Utils     3.0 # 6.7
SHARED_LIBS +=  Qt6QuickLayouts           5.0 # 6.7
SHARED_LIBS +=  Qt6QuickTemplates2        8.0 # 6.7
SHARED_LIBS +=  Qt6QmlCompiler            5.0 # 6.7
SHARED_LIBS +=  Qt6QuickEffects           3.0 # 6.7
SHARED_LIBS +=	Qt6QmlNetwork             3.0 # 6.7

SHARED_LIBS +=	Qt6QuickControls2Basic    3.0 # 0.0
SHARED_LIBS +=	Qt6QuickControls2BasicStyleImpl 0.0 # 0.0
SHARED_LIBS +=	Qt6QuickControls2Fusion   1.0 # 0.0
SHARED_LIBS +=	Qt6QuickControls2FusionStyleImpl 0.0 # 0.0
SHARED_LIBS +=	Qt6QuickControls2Imagine  2.0 # 0.0
SHARED_LIBS +=	Qt6QuickControls2ImagineStyleImpl 0.0 # 0.0
SHARED_LIBS +=	Qt6QuickControls2Material 3.0 # 0.0
SHARED_LIBS +=	Qt6QuickControls2MaterialStyleImpl 0.0 # 0.0
SHARED_LIBS +=	Qt6QuickControls2Universal 1.0 # 0.0
SHARED_LIBS +=	Qt6QuickControls2UniversalStyleImpl 0.0 # 0.0

SHARED_LIBS +=  Qt6LabsPlatform           1.0 # 0.0
SHARED_LIBS +=  Qt6QmlMeta                1.0 # 0.0
SHARED_LIBS +=  Qt6QuickControls2FluentWinUI3StyleImpl 0.0 # 0.0
SHARED_LIBS +=  Qt6QuickVectorImage       1.0 # 0.0
SHARED_LIBS +=  Qt6QuickVectorImageGenerator 1.0 # 0.0

SHARED_LIBS +=	Qt6LabsSynchronizer       1.0 # 0.0
SHARED_LIBS +=	Qt6QuickShapesDesignHelpers 1.0 # 0.0
SHARED_LIBS +=	Qt6QuickVectorImageHelpers 1.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Network Qt6OpenGL
WANTLIB += Qt6Sql Qt6Svg Qt6Test Qt6Widgets c m xkbcommon

MODULES =	lang/python
CONFIGURE_STYLE = cmake

MODQT6_DEPS =	No

BUILD_DEPENDS =	graphics/vulkan-loader \
		x11/qt6/qtlanguageserver \
		x11/qt6/qtshadertools

LIB_DEPENDS =	x11/qt6/qtbase \
		x11/qt6/qtsvg \
		x11/xkbcommon

PROGRAMS6 =	qml qmldom qmleasing qmlformat qmllint qmlls qmlplugindump \
		qmlpreview qmlprofiler qmlscene qmltc qmltestrunner qmltime \
		svgtoqml

pre-configure:
# Python is used for building, this path does not get into final packages.
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python

LIB_DEPENDS += 
LIB_DEPENDS += 
.include <bsd.port.mk>
