COMMENT =		verify certs using OS trust stores

MODPY_DISTV =		0.10.4
DISTNAME =		truststore-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		security
MAINTAINER =		Florian Viehweger <openbsd@out-of-creativity.de>

HOMEPAGE =		https://truststore.readthedocs.io/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		flit_core

TEST_DEPENDS =		devel/py-test-asyncio \
			devel/py-test-httpserver \
			devel/py-test-rerunfailures \
			security/py-axolotl \
			security/py-axolotl-curve25519 \
			www/py-httpx \
			www/py-aiohttp \
			www/py-requests


.include <bsd.port.mk>
