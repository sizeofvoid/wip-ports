COMMENT =		Python bindings for ZeroMQ

# 26+ requires scikit-build-core
MODPY_DISTV =	25.1.1
DISTNAME =		pyzmq-${MODPY_DISTV}
PKGNAME =		${DISTNAME:S/py/py-/}
REVISION =		1

CATEGORIES =		net devel

HOMEPAGE =		https://github.com/zeromq/pyzmq/

# LGPLv3/BSD
PERMIT_PACKAGE =	Yes

EPOCH =			0

WANTLIB =		${MODPY_WANTLIB} pthread zmq

MODULES =		lang/python

BUILD_DEPENDS =		sysutils/py-packaging \
			lang/cython

LIB_DEPENDS =		${MODPY_LIB_DEPENDS} \
			net/zeromq

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm
MAKE_ENV =		LC_CTYPE=en_US.UTF-8
# verbose because we've seen cores in some cases and they're hard to
# identify in a large test_XXX file
MODPY_PYTEST_ARGS =	-v build/lib.*

# ulimit -n 1024
TEST_DEPENDS =		math/py-numpy \
			www/py-tornado

.include <bsd.port.mk>
