COMMENT =	library for fast updates of QR and Cholesky decompositions

DISTNAME =	qrupdate-1.1.2
SHARED_LIBS +=  qrupdate	0.0	# .1.1
CATEGORIES =	math
REVISION =	5
FIX_EXTRACT_PERMISSIONS=Yes

HOMEPAGE =	https://qrupdate.sourceforge.net/

MAINTAINER =	Paul Irofti <paul@irofti.net>

# GPL v3
PERMIT_PACKAGE =		Yes

SITES =			${SITE_SOURCEFORGE:=qrupdate/}

MODULES =		fortran
MODFORTRAN_COMPILER =	gfortran

WANTLIB =		m ${MODFORTRAN_WANTLIB}

BUILD_DEPENDS =		${MODFORTRAN_BUILD_DEPENDS}
LIB_DEPENDS =		${MODFORTRAN_LIB_DEPENDS}

ALL_TARGET =		lib solib
MAKE_FLAGS =		FC="${MODFORTRAN_COMPILER}" FFLAGS="${FFLAGS}" \
			VERSION=${LIBqrupdate_VERSION} \
			MAJOR=${LIBqrupdate_VERSION:R} \
			BLAS= LAPACK=
USE_GMAKE =		Yes

TEST_TARGET =	test
TEST_FLAGS =		BLAS="-lblas" LAPACK="-llapack"

SUBST_VARS =		MAKE_PROGRAM

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile

.include <bsd.port.mk>
