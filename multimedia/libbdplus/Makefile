COMMENT =		BD+ support library for Blu-ray playback

V =			0.2.0
DISTNAME =		libbdplus-${V}

CATEGORIES =		multimedia

HOMEPAGE =		http://www.videolan.org/developers/libbdplus.html
SITES =		https://download.videolan.org/pub/videolan/libbdplus/${V}/
EXTRACT_SUFX =		.tar.bz2

# LGPL v2.1
PERMIT_PACKAGE =	Yes

WANTLIB =  gcrypt gpg-error iconv intl pthread

SHARED_LIBS +=		bdplus	0.1	# 1.0

LIB_DEPENDS =		security/libgcrypt

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-optimizations \
			--without-libaacs

.include <bsd.port.mk>
