COMMENT =		improved opensource version of Dune 2

DISTNAME =		dunelegacy-0.98.5
REVISION =		0

CATEGORIES =		games x11

HOMEPAGE =		https://dunelegacy.com/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# GPLv2/CC-BY-SA
PERMIT_PACKAGE =	Yes

WANTLIB =		SDL2 SDL2_mixer SDL2_ttf c enet m pthread ${COMPILER_LIBCXX}

SITES = 		http://www.linklevel.net/distfiles/

MODULES = 		devel/cmake

COMPILER = 		base-clang ports-gcc

LIB_DEPENDS =		devel/sdl2-mixer \
			devel/sdl2-ttf \
			net/enet
RUN_DEPENDS = 		devel/desktop-file-utils \
			x11/gtk+4,-guic
TEST_DEPENDS = 		devel/cppunit

CONFIGURE_ARGS += 	-DCMAKE_EXE_LINKER_FLAGS="${LDFLAGS} -L${LOCALBASE}/lib -lenet"
CXXFLAGS += 		-DDUNELEGACY_DATADIR=\\\"${PREFIX}/share/dunelegacy\\\"

WRKDIST =		${WRKDIR}/${PKGNAME}

post-extract:
	rm -r ${WRKSRC}/include/enet

.include <bsd.port.mk>
