COMMENT=	GnuPG Made Easy

VERSION =	2.0.0
DISTNAME =	gpgmepp-${VERSION}

CATEGORIES =	security devel

SHARED_LIBS +=  gpgmepp              4.0      # 27.1

HOMEPAGE =	https://www.gnupg.org/software/gpgme/

SITES =		${SITE_GNUPG:=gpgmepp/}
EXTRACT_SUFX =	.tar.xz

# GPLv2 - LGPLv2.1
PERMIT_PACKAGE=	Yes

MODULES =		devel/cmake

COMPILER =		base-clang ports-gcc
BUILD_DEPENDS =		security/gnupg
RUN_DEPENDS =		security/gnupg

LIB_DEPENDS =		devel/gettext,-runtime \
			security/libgpg-error>=1.47 \
			security/gpgme>=2.0 \
			security/libassuan

CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
