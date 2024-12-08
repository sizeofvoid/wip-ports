COMMENT=	database toolkit for Python

MODPY_EGG_VERSION=	2.0.36
DISTNAME=	sqlalchemy-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	databases

HOMEPAGE=	https://www.sqlalchemy.org/

# MIT
PERMIT_PACKAGE= Yes

WANTLIB=  pthread

WANTLIB-main=  pthread

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

SUBST_VARS +=	MODPY_FLAVOR

FLAVORS=	python3
FLAVOR=		python3

MAKE_ENV +=	PYTHONPATH=.
MODPY_PYTEST=	Yes

BUILD_DEPENDS =	lang/cython${MODPY_FLAVOR}

RUN_DEPENDS +=	devel/py-greenlet${MODPY_FLAVOR} \
		devel/py-typing-extensions${MODPY_FLAVOR}

TEST_DEPENDS=	devel/py-test-xdist${MODPY_FLAVOR} \
		devel/py-mock${MODPY_FLAVOR} \
		devel/py-mypy${MODPY_FLAVOR}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-sqlalchemy
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-sqlalchemy
	cd ${WRKSRC}/doc && pax -rw * ${PREFIX}/share/doc/py-sqlalchemy
	cd ${WRKSRC}/examples && \
		pax -rw * ${PREFIX}/share/examples/py-sqlalchemy

.include <bsd.port.mk>
