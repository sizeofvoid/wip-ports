COMMENT =		pytest plugin to abort hanging tests

MODPY_EGG_VERSION =	1.4.2

DISTNAME =		pytest-timeout-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
REVISION =		3

CATEGORIES =		devel

HOMEPAGE =		https://github.com/pytest-dev/pytest-timeout

MAINTAINER =		Kurt Mosiejczuk <kmos@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-test${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-pexpect${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR}

TEST_ENV +=		PYTHONPATH="."

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
