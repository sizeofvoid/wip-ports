COMMENT =		library for manipulating ID3v1 and ID3v2 tags

DISTNAME =		id3lib-3.8.3
REVISION =		10
CATEGORIES =		audio

SHARED_LIBS +=	id3                  4.0      # .3.8

HOMEPAGE =		https://id3lib.sourceforge.net/

# LGPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =		c m ${COMPILER_LIBCXX} z

SITES =			${SITE_SOURCEFORGE:=id3lib/}

COMPILER =		base-clang ports-gcc base-gcc

USE_GMAKE =		Yes
NO_TEST =		Yes
CONFIGURE_STYLE =	gnu

# not actually used, but the autoconf script doesn't allow building without it
CONFIGURE_ENV =		ac_cv_header_iomanip_h=yes

.include <bsd.port.mk>
