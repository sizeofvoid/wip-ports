COMMENT =	command-line oriented todo list system

CATEGORIES =	productivity

MODPY_EGG_VERSION = 1.3.0
DISTNAME =	yokadi-${MODPY_EGG_VERSION}
REVISION =	1

HOMEPAGE =	https://yokadi.github.io/
SITES =		${HOMEPAGE}/download/

# GPLv3+
PERMIT_PACKAGE=	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	yokadi/tests/*py

RUN_DEPENDS =	databases/py-sqlalchemy${MODPY_FLAVOR} \
		devel/py-colorama${MODPY_FLAVOR} \
		devel/py-dateutil${MODPY_FLAVOR} \
		devel/desktop-file-utils \
		x11/gtk+4,-guic

# optional dep
TEST_DEPENDS =	${RUN_DEPENDS} \
		devel/py-icalendar${MODPY_FLAVOR} \
		devel/py-setproctitle${MODPY_FLAVOR}

.include <bsd.port.mk>
