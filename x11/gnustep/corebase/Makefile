COMMENT =	GNUstep reimplementation of Apple's CoreFoundation#'

DISTNAME =	gnustep-corebase-0.1.1
REVISION =	16
CATEGORIES=	devel

SHARED_LIBS =	gnustep-corebase 0.0

HOMEPAGE =	http://www.gnustep.org/
SITES =		${SITE_GNUSTEP:=libs/}

MODULES =	x11/gnustep
MODGNUSTEP_IS_FRAMEWORK = Yes
WANTLIB += icudata icui18n icuuc m objc2 pthread
WANTLIB += ${COMPILER_LIBCXX}
LIB_DEPENDS +=		textproc/icu4c \
			x11/gnustep/libobjc2

CONFIGURE_STYLE =	gnu

CONFIGURE_ENV +=	CPPFLAGS=-I${LOCALBASE}/include
MAKE_FLAGS +=	libgnustep-corebase_INTERFACE_VERSION=${LIBgnustep-corebase_VERSION}

.include <bsd.port.mk>
