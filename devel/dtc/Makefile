COMMENT=		Device Tree Compiler

DISTNAME=		dtc-1.7.0
CATEGORIES=		sysutils devel
SITES=			https://www.kernel.org/pub/software/utils/dtc/
EXTRACT_SUFX=		.tar.xz

SHARED_LIBS=		fdt	5.2

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c

BUILD_DEPENDS=		devel/bison

MAKE_ENV+=		V=1
MAKE_FLAGS+=		PREFIX="${PREFIX}" LIBDL="" NO_VALGRIND="1" NO_YAML="1"

USE_GMAKE=		Yes

NO_TEST=		Yes

post-extract:
	@perl -pi -e 's,#! /bin/bash,#!${LOCALBASE}/bin/bash,' \
	    ${WRKSRC}/dtdiff

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dtc
	${INSTALL_DATA} ${WRKSRC}/Documentation/*.txt \
	    ${PREFIX}/share/doc/dtc

.include <bsd.port.mk>
