COMMENT =	open source reimplementation of Syndicate game
DISTNAME =	freesynd-0.7.5
CATEGORIES = 	games x11
REVISION =	0

HOMEPAGE =	https://freesynd.sourceforge.io/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =  Yes

WANTLIB += ${COMPILER_LIBCXX} SDL2 SDL2_image SDL2_mixer c m png
WANTLIB += z

SITES =		${SITE_SOURCEFORGE:=freesynd/}

MODULES =	devel/cmake

LIB_DEPENDS =	devel/sdl2 \
		devel/sdl2-image \
		devel/sdl2-mixer \
		graphics/png

CONFIGURE_ARGS =	-DCMAKE_POLICY_VERSION_MINIMUM=3.5 \
			-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON \
			-DCMAKE_INSTALL_DOCDIR=${LOCALBASE}/share/doc/freesynd

CONFIGURE_ARGS +=	-DCMAKE_POLICY_VERSION_MINIMUM=3.5

NO_TEST =	Yes

.include <bsd.port.mk>
