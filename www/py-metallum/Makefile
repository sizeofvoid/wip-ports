COMMENT =		basic python API for www.metal-archives.com

MODPY_EGG_VERSION =	1.1.0
DISTNAME =		python-metallum-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/^python-/py-/}
CATEGORIES =		www
REVISION =		4

HOMEPAGE =		https://github.com/lcharlick/python-metallum
MAINTAINER =		Johan Huldtgren <jhuldtgren@gmail.com>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		devel/py-dateutil${MODPY_FLAVOR} \
			www/py-query${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR} \
			www/py-requests-cache${MODPY_FLAVOR}

# No upstream tests
NO_TEST =		Yes

.include <bsd.port.mk>
