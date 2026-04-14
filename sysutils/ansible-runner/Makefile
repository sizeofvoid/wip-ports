COMMENT =	interface for controlling and interacting with Ansible

MODPY_DISTV =	2.4.3

DISTNAME =	ansible_runner-${MODPY_DISTV}
PKGNAME =	${DISTNAME:S/_/-/}

MAINTAINER =	Mikolaj Kucharski <mikolaj@kucharski.name>

CATEGORIES =	sysutils

HOMEPAGE =	https://ansible-runner.readthedocs.io/

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm

RUN_DEPENDS =		devel/py-pexpect \
			sysutils/ansible \
			sysutils/py-daemon \
			textproc/py-yaml

TEST_DEPENDS =		devel/py-test-cov \
			devel/py-test-mock \
			devel/py-test-timeout \
			devel/py-test-xdist \
			devel/py-yamllint \
			security/py-cryptography

.include <bsd.port.mk>
