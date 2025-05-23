# No consumers on macppc, saves 17 build hours in bulks
NOT_FOR_ARCHS =		powerpc

PORTROACH =		limitw:1,even

COMMENT =		3D graphics toolkit

V =			3.6.5
GH_ACCOUNT =		openscenegraph
GH_PROJECT =		OpenSceneGraph
GH_TAGNAME =		OpenSceneGraph-$V
DISTNAME =		openscenegraph-${V}
REVISION =		8

SUBST_VARS +=		V

SHARED_LIBS  =  OpenThreads               2.0 # 2.6
SHARED_LIBS +=  osg                       2.0 # 3.0
SHARED_LIBS +=  osgAnimation              2.0 # 3.0
SHARED_LIBS +=  osgDB                     2.0 # 3.0
SHARED_LIBS +=  osgFX                     2.0 # 3.0
SHARED_LIBS +=  osgGA                     2.0 # 3.0
SHARED_LIBS +=  osgManipulator            2.0 # 3.0
SHARED_LIBS +=  osgParticle               2.0 # 3.0
SHARED_LIBS +=  osgPresentation           2.0 # 3.0
SHARED_LIBS +=  osgShadow                 2.0 # 3.0
SHARED_LIBS +=  osgSim                    2.0 # 3.0
SHARED_LIBS +=  osgTerrain                2.0 # 3.0
SHARED_LIBS +=  osgText                   2.0 # 3.0
SHARED_LIBS +=  osgUtil                   2.0 # 3.0
SHARED_LIBS +=  osgUI                     1.0 # 3.4
SHARED_LIBS +=  osgViewer                 2.0 # 3.0
SHARED_LIBS +=  osgVolume                 2.0 # 3.0
SHARED_LIBS +=  osgWidget                 2.0 # 3.0

CATEGORIES =		graphics

HOMEPAGE =		http://www.openscenegraph.org

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# OSGPL (see LICENSE.txt)
PERMIT_PACKAGE =	Yes

COMPILER =	base-clang ports-gcc

CXXFLAGS_base-clang =	-std=c++14

WANTLIB += ${COMPILER_LIBCXX} GL Iex-3_3 IlmThread-3_3
WANTLIB += SDL X11 Xinerama Xrandr fontconfig OpenEXRCore-3_3
WANTLIB += avcodec avdevice avformat avutil c cairo
WANTLIB += curl freetype gdal gdk_pixbuf-2.0 gif gio-2.0 glib-2.0
WANTLIB += gobject-2.0 intl jasper jpeg m png poppler-glib rsvg-2
WANTLIB += swresample swscale tiff z Imath-3_1 OpenEXR-3_3

MODULES =		devel/cmake
LIB_DEPENDS =		devel/sdl \
			graphics/openexr \
			graphics/ffmpeg \
			graphics/jasper \
			graphics/gdk-pixbuf2 \
			graphics/giflib \
			geo/gdal \
			net/curl \
			print/poppler \
			x11/gnome/librsvg

NO_TEST =		Yes

CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_OpenCascade:Bool=Yes \
			-DCMAKE_DISABLE_FIND_PACKAGE_DCMTK:Bool=Yes

# Fix build with OpenEXR>=3 (Imath split)
CXXFLAGS +=		-I${LOCALBASE}/include/Imath

.include <bsd.port.mk>
