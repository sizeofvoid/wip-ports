BROKEN-powerpc =CPUCore.cc:2347: error: insn does not satisfy its constraints
BROKEN-hppa =	OOM when building src/cpu/CPUCore.cc
BROKEN-alpha =	OOM when building src/cpu/CPUCore.cc
BROKEN-sparc64 =ports-gcc does not know c++20

COMMENT =	MSX home computer emulator

V =		19.1
DISTNAME =	openmsx-$V
REVISION =	0

CATEGORIES =	emulators

HOMEPAGE =	https://openmsx.org/

PERMIT_PACKAGE =	claims GPLv2, but no copyright notices in source files
PERMIT_DISTFILES =	claims GPLv2, but no copyright notices in source files

WANTLIB += ${MODTCL_LIB}
WANTLIB += GL GLEW SDL2 SDL2_ttf c freetype m ogg png
WANTLIB += pthread ${COMPILER_LIBCXX} theoradec vorbis z

SITES =		https://github.com/openMSX/openMSX/releases/download/RELEASE_${V:S/./_/g}/
CONFIGURE_STYLE =	simple

MAKE_ENV +=	INSTALL_BASE=${PREFIX}/share/openmsx \
		INSTALL_BINARY_DIR=${PREFIX}/bin \
		INSTALL_SHARE_DIR=${PREFIX}/share/openmsx \
		INSTALL_DOC_DIR=${PREFIX}/share/doc/openmsx

COMPILER =	base-clang ports-gcc
LIB_DEPENDS =	audio/libvorbis \
		devel/sdl2 \
		devel/sdl2-ttf \
		graphics/glew \
		graphics/png \
		multimedia/libtheora \
		${MODTCL_LIB_DEPENDS}

NO_TEST =	Yes

MODULES =	lang/python \
		lang/tcl

MODPY_RUNDEP =	No
MAKE_FILE =	GNUmakefile
USE_GMAKE =	Yes

MAKE_FLAGS =	CC="${CC}" \
		CXX="${CXX}" \
		CFLAGS="${CFLAGS}" \
		CXXFLAGS="${CXXFLAGS}" \
		CHOSEN_COMPILER=${CHOSEN_COMPILER} \
		OPENMSX_STRIP=false \
		V=1

# PIE doesn't leave sufficient registers
.if ${MACHINE_ARCH:Mi386}
CFLAGS += -fomit-frame-pointer
CXXFLAGS += -fomit-frame-pointer
.endif

.include <bsd.port.mk>
