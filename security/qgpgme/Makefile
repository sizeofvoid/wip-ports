COMMENT=	GnuPG Made Easy

VERSION =	2.0.0
DISTNAME =	qgpgme-${VERSION}

CATEGORIES =	security devel

HOMEPAGE =	https://www.gnupg.org/software/gpgme/

SHARED_LIBS +=  qgpgmeqt6            1.0      # 21.1

SITES =		${SITE_GNUPG:=qgpgme/}
EXTRACT_SUFX =	.tar.xz

# GPLv2 - LGPLv2.1
PERMIT_PACKAGE=	Yes

MODULES =		devel/cmake \
			x11/qt6

COMPILER =		base-clang ports-gcc
BUILD_DEPENDS =		security/gnupg
RUN_DEPENDS =		security/gnupg

LIB_DEPENDS =		devel/gettext,-runtime \
			security/libgpg-error \
			security/libassuan

CONFIGURE_ARGS =	-DBUILD_WITH_QT5=OFF

.include <bsd.port.mk>
