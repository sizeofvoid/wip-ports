COMMENT=	implementation of HTTP/3

V=		1.11.0
DISTNAME=	nghttp3-$V

SHARED_LIBS +=	nghttp3              3.2     # 12.0

CATEGORIES=	www

MAINTAINER=	Theo Buehler <tb@openbsd.org>

HOMEPAGE=	https://nghttp2.org/nghttp3/

# MIT
PERMIT_PACKAGE=	Yes

SITES=		https://github.com/ngtcp2/nghttp3/releases/download/v$V/

SEPARATE_BUILD=		Yes
DEBUG_PACKAGES=		${BUILD_PACKAGES}

COMPILER=		base-clang ports-gcc
COMPILER_LANGS=		c

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-lib-only

.include <bsd.port.mk>
