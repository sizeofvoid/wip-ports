COMMENT=	split mp3/ogg files without decoding
DISTNAME=	mp3splt-2.6.2
REVISION=	1

CATEGORIES=	audio

HOMEPAGE=	https://mp3splt.sourceforge.net/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=  c mp3splt pthread

SITES=		${SITE_SOURCEFORGE:=mp3splt/}

BUILD_DEPENDS=	devel/gettext,-runtime

LIB_DEPENDS=	audio/libmp3splt

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
