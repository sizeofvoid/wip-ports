COMMENT=	Python module for decorators, wrappers and monkey patching

MODPY_DISTV=	1.17.2
DISTNAME=	wrapt-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel
REVISION=	0

# https://github.com/GrahamDumpleton/wrapt
HOMEPAGE=	https://wrapt.readthedocs.org/en/latest/

WANTLIB += pthread ${MODPY_WANTLIB}

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

.include <bsd.port.mk>
