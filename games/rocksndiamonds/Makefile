ONLY_FOR_ARCHS =	${GCC4_ARCHS} ${CLANG_ARCHS}

COMMENT =	maze game resembling boulderdash

DISTNAME =	rocksndiamonds-4.4.0.5
EXTRACT_SUFX =	-linux.tar.gz
CATEGORIES =	games x11

HOMEPAGE =	https://www.artsoft.org/rocksndiamonds/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =	SDL2 c m SDL2_mixer SDL2_image SDL2_net z

SITES =		https://www.artsoft.org/RELEASES/unix/rocksndiamonds/

LIB_DEPENDS =	devel/sdl2-mixer \
		devel/sdl2-image \
		devel/sdl2-net
RUN_DEPENDS =	devel/desktop-file-utils

USE_GMAKE =	Yes
MAKE_FLAGS =	CC="${CC}" MAKE="${MAKE_PROGRAM}" X11_PATH="${X11BASE}" \
		RO_GAME_DIR="${PREFIX}/share/rocksndiamonds" \
		RW_GAME_DIR="/var/games/rocksndiamonds" \
		BASE_PATH="${PREFIX}/share/rocksndiamonds"

TARGET =	sdl2

NO_TEST =	Yes

N = rocksndiamonds

post-extract:
	@find ${WRKSRC} -name \*.orig -delete

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/${N} ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/${N}
	@cp -R ${WRKSRC}/{graphics,levels,music,sounds} ${PREFIX}/share/${N}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${N}
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${FILESDIR}/${N}.png ${PREFIX}/share/pixmaps
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${FILESDIR}/${N}.desktop ${PREFIX}/share/applications

.include <bsd.port.mk>
