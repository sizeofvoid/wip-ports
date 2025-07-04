USE_WXNEEDED=		Yes

COMMENT=		free open source planetarium

V=			25.2
DISTNAME=		stellarium-${V}

CATEGORIES=		astro x11

HOMEPAGE=		http://www.stellarium.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} GL QXlsxQt6 Qt6Charts Qt6Concurrent
WANTLIB += Qt6Core Qt6Gui Qt6Multimedia Qt6MultimediaWidgets Qt6Network
WANTLIB += Qt6OpenGL Qt6OpenGLWidgets Qt6Positioning Qt6PrintSupport
WANTLIB += Qt6Qml Qt6QmlMeta Qt6QmlModels Qt6QmlWorkerScript Qt6Quick
WANTLIB += Qt6SerialPort Qt6WebChannel Qt6WebEngineCore Qt6WebEngineWidgets
WANTLIB += Qt6Widgets c exiv2 gps indiclient m md4c md4c-html nlopt
WANTLIB += xkbcommon z

SITES=			https://github.com/Stellarium/stellarium/releases/download/v${V}/

MODULES=		devel/cmake \
			lang/python \
			x11/qt6

MODCMAKE_LDFLAGS=	-L${LOCALBASE}/lib
MODPY_RUNDEP=		No

BUILD_DEPENDS=		astro/calcmysky \
			devel/fast-float

LIB_DEPENDS=		devel/indi,-libs>=2.1.1 \
			devel/md4c \
			graphics/exiv2 \
			math/nlopt \
			misc/gpsd \
			textproc/qxlsx \
			x11/qt6/qtcharts \
			x11/qt6/qtmultimedia \
			x11/qt6/qtpositioning \
			x11/qt6/qtserialport \
			x11/qt6/qtwebengine

# used to download more stars definitions
RUN_DEPENDS=		net/curl \
			devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/gtk+4,-guic

CONFIGURE_ENV=		HOME=${WRKDIR}
PORTHOME=		${WRKDIR}

CONFIGURE_ARGS=		-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON \
			-DSTELLARIUM_RELEASE_BUILD=1

CFLAGS +=		-I${LOCALBASE}/include -I${X11BASE}/include
CXXFLAGS +=		-I${LOCALBASE}/include -I${X11BASE}/include

NO_TEST=		Yes

.include <bsd.port.mk>
