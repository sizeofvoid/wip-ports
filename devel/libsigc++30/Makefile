COMMENT=		callback framework for C++

GNOME_VERSION=		3.6.0
GNOME_PROJECT=		libsigc++
PKGNAME=		libsigc++30-${GNOME_VERSION}
REVISION=		0

CATEGORIES=		devel

SHARED_LIBS += sigc-3.0                  0.2 # 0.0.0

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX}

MODULES=		devel/meson \
			x11/gnome

# c++11
COMPILER =		base-clang ports-gcc

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
