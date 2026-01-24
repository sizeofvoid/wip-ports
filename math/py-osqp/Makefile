COMMENT=	Python interface to OSQP

MODPY_DISTV=	0.6.1
DISTNAME=	osqp-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	math
REVISION=	11

MAINTAINER=	Paul Irofti <paul@irofti.net>

# Apache v2
PERMIT_PACKAGE=	Yes

WANTLIB=	pthread

MODULES=	lang/python

BUILD_DEPENDS=	${RUN_DEPENDS} \
		devel/cmake/core

RUN_DEPENDS=	math/py-numpy	\
		math/py-scipy	\
		devel/py-future

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

pre-configure:
	find ${WRKSRC} -name "CMakeLists.txt" -type f -exec sed -i \
	-E 's/cmake_minimum_required \([[:space:]]*VERSION[[:space:]]+[^)]+\)/cmake_minimum_required(VERSION 3.5)/g' \
	{} \;


CONFIGURE_ARGS +=	-DCMAKE_POLICY_VERSION_MINIMUM=3.5

.include <bsd.port.mk>
