COMMENT =		OpenStreetMap routing software

DISTNAME =		routino-3.4.3

SHARED_LIBS +=		routino 0.0
SHARED_LIBS +=		routino-slim 0.0

CATEGORIES =		geo

HOMEPAGE =		https://www.routino.org/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# AGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB =		bz2 c m pthread z

SITES =			https://www.routino.org/download/
EXTRACT_SUFX =		.tgz

LIB_DEPENDS =		archivers/bzip2

MAKE_FLAGS =		CC=${CC} LD=${CC} \
			CFLAGS="${CFLAGS} -pthread -DUSE_PTHREADS \
			-DUSE_GZIP -DUSE_BZIP2 -I${LOCALBASE}/include" \
			LDFLAGS="-lm -pthread -lbz2 -lz -L${LOCALBASE}/lib"

USE_GMAKE =		Yes

.include <bsd.port.mk>
