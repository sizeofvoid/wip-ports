COMMENT=	Python bindings for Chromaprint and the Acoustid API

MODPY_DISTV=	1.3.1
GH_ACCOUNT=	beetbox
GH_PROJECT=	pyacoustid
GH_TAGNAME=	v${MODPY_DISTV}
PKGNAME=	py-acoustid-${MODPY_DISTV}

CATEGORIES=	audio

HOMEPAGE=	https://github.com/beetbox/pyacoustid/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	poetry-core

# can also use python "audioread" module, not yet in ports
RUN_DEPENDS=	audio/chromaprint \
		www/py-requests

# tests need audioread
NO_TEST=	Yes

.include <bsd.port.mk>
