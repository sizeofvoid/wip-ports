COMMENT =	elliptic curve method (ECM) factorization library

DISTNAME =	ecm-7.0.4
SHARED_LIBS =	ecm	1.0
CATEGORIES =	math

HOMEPAGE =	http://gforge.inria.fr/projects/ecm/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv3 / LGLPv3
PERMIT_PACKAGE =	Yes

WANTLIB =		c m gmp

SITES =			http://gforge.inria.fr/frs/download.php/36224/

LIB_DEPENDS =		devel/gmp

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
		${INSTALL_MAN} ${WRKSRC}/ecm.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
