COMMENT =	construct and use map tile grids

MODPY_DISTV =	6.2.0
DISTNAME =	morecantile-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	geo

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_PYBUILD =	flit_core
MODPY_PI =	Yes

RUN_DEPENDS =	geo/py-proj \
		geo/py-rasterio \
		devel/py-pydantic \
		devel/py-attrs

NO_TEST =	Yes

.include <bsd.port.mk>
