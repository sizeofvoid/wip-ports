COMMENT=	arbitrary-precision complex numbers math library

V=		1.2.1
DISTNAME=	mpc-${V}
PKGNAME=	libmpc-${V}
SHARED_LIBS=	mpc	1.1	# 5.1

CATEGORIES=	devel math

HOMEPAGE=	http://www.multiprecision.org/mpc/
SITES=		${SITE_GNU:=mpc/}

# LGPLv3+
PERMIT_PACKAGE=	Yes

LIB_DEPENDS=		devel/mpfr \
			devel/gmp,no_cxx,bootstrap
WANTLIB=		gmp m mpfr

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-mpfr=${LOCALBASE} \
			--with-gmp=${LOCALBASE}

.include <bsd.port.mk>
