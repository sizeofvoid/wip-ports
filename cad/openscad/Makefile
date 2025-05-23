BROKEN =		update to git snapshot to build with 1.87
COMMENT =		the programmer's solid 3D CAD modeller
BROKEN-sparc64=	SIGILL on src/cgalutils.cc with CGAL-4.6.3

V =			2021.01
DISTNAME =		openscad-${V}
REVISION =		12

CATEGORIES =		cad

HOMEPAGE =		https://www.openscad.org/

# GPLv2+ with CGAL exception
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLEW GLU Qt5Concurrent Qt5Core
WANTLIB += Qt5DBus Qt5Gamepad Qt5Gui Qt5Multimedia Qt5Network
WANTLIB += Qt5PrintSupport Qt5Widgets X11 boost_filesystem-mt
WANTLIB += boost_program_options-mt boost_regex-mt boost_system-mt
WANTLIB += boost_thread-mt c cairo double-conversion fontconfig
WANTLIB += freetype glib-2.0 gmp harfbuzz intl m mpfr opencsg
WANTLIB += qscintilla2_qt5 xml2 zip

SITES =			https://files.openscad.org/
EXTRACT_SUFX =		.src.tar.gz

MODULES =		devel/qmake \
			lang/python \
			x11/qt5

BUILD_DEPENDS =		devel/bison \
			devel/gettext,-tools \
			math/cgal \
			math/eigen3

LIB_DEPENDS =		archivers/libzip \
			devel/boost \
			devel/gmp \
			devel/harfbuzz \
			devel/mpfr \
			editors/qscintilla \
			graphics/glew \
			graphics/opencsg \
			math/double-conversion \
			x11/qt5/qtgamepad \
			x11/qt5/qtmultimedia

RUN_DEPENDS =		devel/desktop-file-utils \
			fonts/liberation-fonts \
			misc/shared-mime-info \
			x11/gtk+4,-guic

# virtual memory exhausted: Cannot allocate memory
.if ${MACHINE_ARCH:Malpha}
COPTS +=		-O1
CXXOPTS +=		-O1
.endif

MODQMAKE_ARGS =		VERSION=${V}
SEPARATE_BUILD =	No

NO_TEST =		Yes

pre-configure:
	ln -sf ${LOCALBASE}/bin/bison ${WRKDIR}/bin/yacc

post-install:
	${MODPY_COMPILEALL} ${PREFIX}/share/openscad/libraries/MCAD/

.include <bsd.port.mk>
