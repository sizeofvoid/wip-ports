# $OpenBSD: Makefile,v 1.22 2021/02/03 02:04:56 bcallah Exp $

V =			2.52
COMMENT=		interpreter for Infocom-compatible games

DISTNAME=		frotz-${V}
REVISION=		0
CATEGORIES=     	games

HOMEPAGE=		https://davidgriffith.gitlab.io/frotz/
MAINTAINER=		Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += SDL2 SDL2_mixer ao c curses freetype jpeg m modplug
WANTLIB += png pthread samplerate sndfile vorbisfile z

MASTER_SITES=		https://gitlab.com/DavidGriffith/frotz/-/archive/${V}/

LIB_DEPENDS=		audio/libao \
			audio/libmodplug \
			audio/libsamplerate \
			devel/sdl2-mixer \
			graphics/jpeg \
			graphics/png

USE_GMAKE=		Yes
MAKE_FLAGS=		CC="${CC}" OPTS="${CFLAGS}" CONFIG_DIR="${SYSCONFDIR}"
FAKE_FLAGS=		PREFIX=${WRKINST}${TRUEPREFIX}

INSTALL_TARGET=		install install_dumb install_sdl

CFLAGS +=		-DUSE_UNISTD_H -DCOLOR_SUPPORT -DEMACS_EDITING

FAKE_FLAGS =		DESTDIR= MAN_PREFIX="${DESTDIR}${PREFIX}"

NO_TEST=		Yes

.include <bsd.port.mk>
