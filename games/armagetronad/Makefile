V =			0.2.9
P =			2.3
COMMENT =		3D light cycle game

DISTNAME =		armagetronad-${V}.${P}
EXTRACT_SUFX =		.tbz

CATEGORIES =		games x11

HOMEPAGE =		http://armagetronad.org/
MAINTAINER =		Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =		Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLU SDL SDL_image c m png xml2

# C++11
COMPILER =		base-clang ports-gcc

#SITES =	https://launchpad.net/armagetronad/${V}/${V}.${P}/+download/
SITES =	${SITE_SOURCEFORGE:=armagetronad/}

BUILD_DEPENDS =		shells/bash
LIB_DEPENDS =		devel/sdl-image \
			textproc/libxml

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-games=no \
			--enable-uninstall=no \
			--disable-useradd \
			--disable-initscripts \
			--disable-sysinstall \
			--disable-binreloc \
			--disable-zthreadtest

.include <bsd.port.mk>
