COMMENT =	set of python modules for machine learning and data mining

# 1.4.2+ requires numpy 2.x
MODPY_EGG_VERSION =	1.4.1.post1
DISTNAME =		scikit-learn-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		math

HOMEPAGE =		https://scikit-learn.org

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# BSD-3
PERMIT_PACKAGE =	Yes

# C++11
COMPILER =		base-clang ports-gcc

WANTLIB += ${COMPILER_LIBCXX} m

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

MODPY_PYTEST_ARGS =	-v
MODPY_TEST_DIR = ${WRKSRC}/build/lib.openbsd-${OSREV}-${ARCH}-cpython-${MODPY_MAJORMINOR}

FLAVORS =		python3
FLAVOR =		python3

BUILD_DEPENDS =		lang/cython${MODPY_FLAVOR} \
			math/py-numpy${MODPY_FLAVOR} \
			math/py-scipy${MODPY_FLAVOR}

RUN_DEPENDS =		math/py-numpy${MODPY_FLAVOR}>=1.19.5 \
			math/py-scipy${MODPY_FLAVOR}>=1.6.0 \
			sysutils/py-joblib${MODPY_FLAVOR}>=1.2.0 \
			sysutils/py-threadpoolctl${MODPY_FLAVOR}>=2.0.0

TEST_DEPENDS =		math/py-pandas${MODPY_FLAVOR}

.include <bsd.port.mk>
