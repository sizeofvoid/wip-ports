COMMENT=	Bauer stereophonic-to-binaural DSP
REVISION=	6

DISTNAME=	libbs2b-3.1.0

SHARED_LIBS +=	bs2b                      0.0 # 0.0

CATEGORIES=	audio

HOMEPAGE=	https://bs2b.sourceforge.net/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += FLAC c m mp3lame mpg123 ogg sndfile vorbis vorbisenc opus

COMPILER =	base-clang ports-gcc base-gcc

SITES=		${SITE_SOURCEFORGE:=bs2b/}

LIB_DEPENDS=	audio/libsndfile
SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
