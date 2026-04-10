COMMENT=	library for network communications and cryptography

DISTNAME=	libsodium-1.0.22

# grep ^SODIUM_LIBRARY_VERSION_M `make show=WRKSRC`/configure.ac
SHARED_LIBS +=  sodium               11.1     # 26.4

CATEGORIES=	security net

HOMEPAGE=	https://github.com/jedisct1/libsodium
SITES=		https://download.libsodium.org/libsodium/releases/ \
		https://download.libsodium.org/libsodium/releases/old/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# ISC
PERMIT_PACKAGE=	Yes

WANTLIB += pthread

# codebase is really targetted at newer compilers; at least KEM tests
# segfault on sparc64 if built with GCC 4.2.1.
COMPILER =	base-clang ports-gcc
COMPILER_LANGS = c

SEPARATE_BUILD=	Yes

CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libsodium
	${INSTALL_DATA} ${WRKSRC}/README.markdown ${PREFIX}/share/doc/libsodium/

.include <bsd.port.mk>
