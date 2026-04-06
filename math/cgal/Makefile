COMMENT =		Computational Geometry Algorithms Library

V =			6.1.1
DISTNAME =		CGAL-${V}
PKGNAME =		${DISTNAME:L}

CATEGORIES =		math

EPOCH =			0

HOMEPAGE =		https://www.cgal.org/

# LGPLv3+ and GPLv3+; see https://www.cgal.org/license.html
PERMIT_PACKAGE =	Yes

SITES =			https://github.com/CGAL/cgal/releases/download/v${V}/
EXTRACT_SUFX =		.tar.xz

MODULES =		devel/cmake

RUN_DEPENDS =		devel/boost \
			devel/gmp \
			devel/mpfr

NO_TEST =		Yes

.include <bsd.port.mk>
