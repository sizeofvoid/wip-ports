COMMENT=	Python Imaging Library (friendly fork of PIL)

MODPY_DISTV=	11.3.0
DISTNAME=	pillow-${MODPY_DISTV}
PKGNAME=	py-Pillow-${MODPY_DISTV}
CATEGORIES=	graphics

HOMEPAGE=	https://python-pillow.github.io/

# MIT-CMU
PERMIT_PACKAGE=	Yes

WANTLIB += freetype imagequant jpeg lcms2 openjp2 tiff
WANTLIB += webp webpdemux webpmux xcb z

MODULES=	lang/python
MODPY_PI=	Yes
# uses own in-tree backend which wraps setuptools
MODPY_PYBUILD=	setuptools

DEBUG_PACKAGES=	${BUILD_PACKAGES}

# PyQt-related tests segfault
MODPY_PYTEST_ARGS= --ignore test_qt_image_*.py

LIB_DEPENDS=	graphics/lcms2 \
		graphics/openjp2>=2.3.0p0 \
		graphics/libimagequant \
		graphics/libwebp
TEST_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH} \
		${MODPY_TKINTER_DEPENDS} \
		devel/py-test-timeout \
		sysutils/py-packaging

# fail if libs aren't found
MODPY_PYBUILD_ARGS= -C tiff=enable -C xcb=enable
# can also use -C debug=true

pre-test:
	cd ${WRKSRC}; ${MODPY_BIN} ./selftest.py

post-install:
	${INSTALL_DATA_DIR} ${WRKINST}${MODPY_INCDIR}
	${INSTALL_DATA} ${WRKSRC}/src/libImaging/{ImPlatform,Imaging}.h \
	    ${WRKINST}${MODPY_INCDIR}

.include <bsd.port.mk>
