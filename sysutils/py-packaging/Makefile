COMMENT=	core utilities for Python packaging

MODPY_DISTV=	25.0
DISTNAME=	packaging-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	sysutils

HOMEPAGE=	https://github.com/pypa/packaging

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYTEST=	Yes

# This port is a BDEP of most py-* ports so must have minimal deps and
# cannot use MODPY_PYBUILD. flit_core is OK because it has its own
# bootstrap method to install from the wheel, and installer is OK because
# it only depends on flit_core.
BUILD_DEPENDS=	archivers/unzip \
		devel/py-flit_core \
		devel/py-installer
TEST_DEPENDS=	devel/py-pretend

do-build:
	cd ${WRKSRC} && ${MODPY_BIN} -m flit_core.wheel

do-install:
	${INSTALL_DATA_DIR} ${WRKINST}${MODPY_LIBDIR}
	PYTHONPATH=${WRKSRC}/src ${MODPY_BIN} -m installer \
            -d ${WRKINST} ${WRKSRC}/dist/*.whl

.include <bsd.port.mk>
