COMMENT=	GNU project portable class framework for C++

VER=		1.7.3
DISTNAME=	commoncpp2-${VER}
PKGNAME=	commoncpp-${VER}
REVISION=	10
CATEGORIES=	devel
SITES=		${SITE_GNU:=commoncpp/}

SHARED_LIBS+=	ccext2		2.0
SHARED_LIBS+=	ccgnu2		2.0

HOMEPAGE=	https://www.gnu.org/software/commoncpp/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=	crypto ssl z m ${COMPILER_LIBCXX} pthread

COMPILER =		base-clang ports-gcc base-gcc

CXXFLAGS_base-clang=	-std=c++98

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.61
CONFIGURE_ARGS+= --without-nat \
		--with-openssl
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_path_DOXYGEN=no \
		ac_cv_header_gnutls_gnutls_h=no

do-test:
	cd ${WRKDIST}/tests && ${SETENV} ${MAKE_ENV} ${MAKE} && \
		./test.sh

.include <bsd.port.mk>
