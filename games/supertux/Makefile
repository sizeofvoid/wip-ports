COMMENT =		jump 'n' run game

V =			0.6.3
DISTNAME =		SuperTux-v${V}-Source
PKGNAME =		supertux-$V
REVISION =		1

CATEGORIES =		games

HOMEPAGE =		https://www.supertux.org/

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLEW GLU SDL2 SDL2_image boost_date_time-mt
WANTLIB += boost_filesystem-mt boost_locale-mt boost_system-mt
WANTLIB += c curl freetype m ogg openal physfs png vorbis vorbisfile
WANTLIB += z boost_atomic-mt boost_chrono-mt boost_thread-mt

SITES =		https://github.com/SuperTux/supertux/releases/download/v${V}/

FIX_CRLF_FILES =	external/squirrel/CMakeLists.txt

MAKE_ENV +=		CXXFLAGS="${CXXFLAGS}"

MODULES +=		devel/cmake
COMPILER =		base-clang ports-gcc
BUILD_DEPENDS =		graphics/glm
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+4,-guic
LIB_DEPENDS =		devel/sdl2-image \
			devel/physfs \
			graphics/glew \
			net/curl \
			audio/openal \
			audio/libvorbis \
			devel/boost

CONFIGURE_ARGS +=	-DINSTALL_SUBDIR_BIN="${LOCALBASE}/bin" \
			-DBUILD_SHARED_LIBS=OFF

NO_TEST =		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/supertux/main.cpp

.include <bsd.port.mk>
