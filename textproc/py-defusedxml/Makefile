COMMENT=	XML bomb protection for Python stdlib modules

MODPY_EGG_VERSION=	0.7.1
DISTNAME=	defusedxml-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	textproc www
REVISION=	4

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

FLAVORS=	python3
FLAVOR=		python3

TEST_DEPENDS=	textproc/py-lxml${MODPY_FLAVOR}

.include <bsd.port.mk>
