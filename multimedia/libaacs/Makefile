COMMENT =		AACS support library for Blu-ray playback

V =			0.11.1
DISTNAME =		libaacs-${V}
REVISION =		0

CATEGORIES =		multimedia

HOMEPAGE =		https://www.videolan.org/developers/libaacs.html
SITES =		https://download.videolan.org/pub/videolan/libaacs/${V}/ \
		ftp://ftp.videolan.org/pub/videolan/libaacs/${V}/
EXTRACT_SUFX =		.tar.bz2

# LGPL v2.1
PERMIT_PACKAGE =	Yes

WANTLIB =  c gcrypt gpg-error iconv intl pthread

SHARED_LIBS +=		aacs	3.1	# 5.1

LIB_DEPENDS =		security/libgcrypt
BUILD_DEPENDS =		devel/bison

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
YACC =			${LOCALBASE}/bin/bison -y
CONFIGURE_ARGS =	--disable-optimizations

.include <bsd.port.mk>
