# CMake Error at CMakeLists.txt:20 (message):
# osm2pgsql needs a 64 bit architecture
ONLY_FOR_ARCHS =	${LP64_ARCHS}

COMMENT =		OSM data to PostgreSQL converter

GH_TAGNAME =		2.1.1
GH_PROJECT =		osm2pgsql
GH_ACCOUNT =		osm2pgsql-dev
REVISION =		0

CATEGORIES =		geo databases

HOMEPAGE =		https://osm2pgsql.org/

# GPLv2
PERMIT_PACKAGE =	Yes

USE_GMAKE =		Yes

WANTLIB += bz2 c expat
WANTLIB += m pthread pq proj z ${MODLUA_WANTLIB} ${COMPILER_LIBCXX}

# postgresql needs to be first otherwise tests are done by cmake module
MODULES =		databases/postgresql    \
			devel/cmake		\
			lang/python		\
			lang/lua

LIB_DEPENDS =		databases/postgresql	\
			devel/proj		\
			devel/boost

BUILD_DEPENDS =		devel/libtool \
			devel/fmt \
			devel/protozero \
			geo/libosmium>=2.17.0 \
			textproc/nlohmann-json

RUN_DEPENDS +=		geo/py-osmium \
			databases/py-psycopg2

# postgresql,-contrib is needed for hstore extension
TEST_DEPENDS =		databases/py-psycopg2	\
			geo/postgis		\
			databases/postgresql,-contrib

COMPILER =		base-clang ports-gcc

MODPY_ADJ_FILES =	tests/regression-test.py

MODLUA_VERSION =	5.2
MODLUA_SA =		Yes

CONFIGURE_ARGS =	-DBUILD_TESTS=ON \
			-DEXTERNAL_LIBOSMIUM=ON \
			-DEXTERNAL_PROTOZERO=ON \
			-DEXTERNAL_FMT=ON

CXXFLAGS +=		-I${LOCALBASE}/include/utfcpp

# bump postgresql,-server limits according to its README otherwise some
# tests fail
MODPOSTGRESQL_TEST_DBNAME =	osm2pgsql-test
MODPOSTGRESQL_TEST_CMD =	${MODCMAKE_TEST_TARGET}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/CMakeLists.txt
	rm -f ${WRKSRC}/cmake/FindLua.cmake

post-patch:
	@${SUBST_CMD} ${WRKSRC}/man/osm2pgsql.1

.include <bsd.port.mk>
