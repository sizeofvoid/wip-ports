COMMENT=	lil' TOML parser

MODPY_EGG_VERSION=	2.2.1

# generally not needed with Python 3.11+ as this is essentially
# a backport of tomllib
DISTNAME=	tomli-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	textproc

HOMEPAGE=	https://github.com/hukkin/tomli

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	flit_core
NO_TEST=	Yes

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
