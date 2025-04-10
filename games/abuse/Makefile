COMMENT =	SDL port of the legendary 2D platform shooter

DISTNAME =	abuse-free-0.8
PKGNAME =	abuse-0.8
EPOCH =		0
ABUSE_SFX =	abuse-free-sounds-20120309
CATEGORIES =	games x11
REVISION =	6

HOMEPAGE =	http://abuse.zoy.org/

# Abuse: GPLv2 and public domain
# Abuse-free-sounds: various free licenses
PERMIT_PACKAGE =	Yes

WANTLIB += FLAC GL SDL SDL_mixer X11 Xdamage Xext Xfixes
WANTLIB += Xxf86vm c drm iconv m mikmod ogg pthread smpeg
WANTLIB += sndio ${COMPILER_LIBCXX} usbhid vorbis vorbisfile xcb
WANTLIB += X11-xcb glapi xcb-dri2 xcb-glx
WANTLIB += expat Xau Xdmcp xcb-dri3 xcb-present xcb-shm
WANTLIB += xcb-sync xcb-xfixes xshmfence z

COMPILER =		base-clang ports-gcc base-gcc

SITES =		${HOMEPAGE}raw-attachment/wiki/download/
SITES.sfx =	http://www.linklevel.net/distfiles/

LIB_DEPENDS =	converters/libiconv \
		devel/sdl-mixer \
		devel/smpeg \
		audio/flac \
		audio/libogg \
		audio/libmikmod \
		audio/libvorbis

DISTFILES = 	${DISTNAME}.tar.gz
DISTFILES.sfx =	${ABUSE_SFX}.tar.gz

SEPARATE_BUILD =Yes

CONFIGURE_STYLE =	autoreconf
CONFIGURE_ARGS =	--enable-release \
			--disable-nonfree \
			--with-assetdir=${PREFIX}/share/abuse \
			--datadir=${PREFIX}/share/abuse
AUTOMAKE_VERSION =	1.11
AUTOCONF_VERSION =	2.68

NO_TEST =	Yes

post-patch:
	cd "${WRKSRC}" && \
		find "${WRKDIR}/${ABUSE_SFX}/patches/" -name 'patch-*' \
		-exec patch -z .afs-orig -i {} \;

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/abuse/sfx
	cd ${WRKDIR}/${ABUSE_SFX}/sfx && find . -type f -exec \
		${INSTALL_DATA} {} ${PREFIX}/share/abuse/sfx/ \;

.include <bsd.port.mk>
