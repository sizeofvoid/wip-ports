COMMENT =	RPCs from Ruby using gRPC

DISTNAME =	grpc-1.74.0
CATEGORIES =	net devel

HOMEPAGE =	https://grpc.io/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# Apache2
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby

WANTLIB += ${COMPILER_LIBCXX} grpc

BUILD_DEPENDS =		net/ruby-googleapis-common-protos-types,${MODRUBY_FLAVOR} \
			devel/ruby-google-protobuf,${MODRUBY_FLAVOR}

LIB_DEPENDS =		net/grpc>=1.74.0

CONFIGURE_STYLE =	ruby gem ext

CONFIGURE_ARGS=		--use-system-libraries

post-patch:
	rm  ${WRKSRC}/Makefile ${WRKSRC}/.yardopts
	rm -r ${WRKSRC}/etc ${WRKSRC}/include ${WRKSRC}/third_party ${WRKSRC}/src/core

.include <bsd.port.mk>
