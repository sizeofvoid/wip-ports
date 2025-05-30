COMMENT=	search engine library

V=		1.4.29
PORTROACH=	limitw:1,even
DISTNAME=	xapian-core-${V}
# the other xapian ports should be kept in-sync:
#   databases/xapian-bindings
#   www/xapian-omega

SHARED_LIBS +=  xapian               6.0      # 44.1

CATEGORIES=	databases textproc

HOMEPAGE=	https://xapian.org/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c m ${COMPILER_LIBCXX} z

SITES=		https://oligarchy.co.uk/xapian/${V}/
EXTRACT_SUFX=	.tar.xz

# -std=gnu++11
COMPILER=       base-clang ports-gcc base-gcc

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		CXXFLAGS="${CXXFLAGS} -Wno-redundant-decls" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_header_uuid_uuid_h=false
# xapian is happy with libc uuid functions, but picks up libuuid if present

DEBUG_PACKAGES=	${BUILD_PACKAGES}

# amd64-capable CPUs all have SSE
.if ${MACHINE_ARCH} != amd64
CONFIGURE_ARGS+= --disable-sse
.endif

post-configure:
	sed -i 's/^#define HAVE_TIMER_CREATE 1$$//' ${WRKSRC}/config.h
	${SUBST_CMD} ${WRKSRC}/cmake/xapian-config.cmake.in

.include <bsd.port.mk>
