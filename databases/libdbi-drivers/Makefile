V =			0.9.0
REVISION =		8
COMMENT-main =		mysql driver for libdbi
COMMENT-pgsql =		pgsql driver for libdbi
COMMENT-sqlite3 =	sqlite3 driver for libdbi
COMMENT-freetds =	freetds driver for libdbi
DISTNAME =		libdbi-drivers-$V
PKGNAME =		libdbi-drivers-${V:S/-/./}
PKGNAME-main =		libdbi-drivers-mysql-${V:S/-/./}

CATEGORIES =		databases

HOMEPAGE =		https://libdbi-drivers.sourceforge.net/
SITES =			${SITE_SOURCEFORGE:=libdbi-drivers/}

MULTI_PACKAGES =	-main -pgsql -sqlite3 -freetds

# LGPLv2.1
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc base-gcc

CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS =	--disable-docs \
			--with-dbi-incdir=${LOCALBASE}/include \
			--with-dbi-libdir=${LOCALBASE}/lib \
			--with-mysql \
			--with-pgsql \
			--with-pgsql-incdir="${LOCALBASE}/include -I${LOCALBASE}/include/postgresql" \
			--with-pgsql-libdir=${LOCALBASE}/lib/postgresql \
			--with-sqlite3 \
			--with-sqlite3-incdir=${LOCALBASE}/include \
			--with-sqlite3-libdir=${LOCALBASE}/lib \
			--with-freetds \
			--with-freetds-incdir=${LOCALBASE}/include \
			--with-freetds-libdir=${LOCALBASE}/lib

WANTLIB-main =		crypto dbi m mariadb pthread ssl ${COMPILER_LIBCXX} z
LIB_DEPENDS-main =	databases/mariadb \
			databases/libdbi
RUN_DEPENDS-main =

WANTLIB-pgsql =		m pq pthread dbi crypto ssl
LIB_DEPENDS-pgsql =	databases/postgresql \
			databases/libdbi
RUN_DEPENDS-pgsql =

WANTLIB-sqlite3 =	m pthread sqlite3 dbi z
LIB_DEPENDS-sqlite3 =	databases/libdbi \
			databases/sqlite3
RUN_DEPENDS-sqlite3 =

WANTLIB-freetds =	ct dbi iconv m pthread ffi gmp gnutls
WANTLIB-freetds +=	hogweed idn2 intl nettle p11-kit tasn1
WANTLIB-freetds +=	unistring brotlidec brotlienc z zstd

LIB_DEPENDS-freetds =	databases/freetds \
			databases/libdbi

TEST_IS_INTERACTIVE =	Yes
TEST_DEPENDS =		databases/libdbi-drivers,-main \
			databases/libdbi-drivers,-pgsql \
			databases/libdbi-drivers,-sqlite3 \
			databases/libdbi-drivers,-freetds \
			databases/mariadb,-server \
			databases/postgresql,-server

pre-configure:
	chmod +x ${WRKSRC}/tests/test_freetds.sh

post-install:
.for d in mysql pgsql sqlite3
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libdbi-drivers/dbd_${d}
	${INSTALL_DATA} ${WRKSRC}/drivers/${d}/dbd_${d}.pdf \
		${PREFIX}/share/doc/libdbi-drivers
	${INSTALL_DATA} ${WRKSRC}/drivers/${d}/dbd_${d}/*.html \
		${PREFIX}/share/doc/libdbi-drivers/dbd_${d}
.endfor

.include <bsd.port.mk>
