COMMENT=	process plaintext documentation into other formats

MODPY_DISTV=	0.21.2
DISTNAME=	docutils-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	textproc
REVISION=	1

HOMEPAGE=	https://docutils.sourceforge.io/

# BSD/GPL/Python Software License
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	flit_core
MODPY_PI=	Yes

RUN_DEPENDS=	textproc/py-pygments

post-install:
	for i in ${PREFIX}/bin/*; do mv $${i} $${i%.py} ; done

.include <bsd.port.mk>
