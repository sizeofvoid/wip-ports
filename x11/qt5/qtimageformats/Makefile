QT5NAME =		QtImageFormats
COMMENT =		support for additional image formats in Qt5

KDE_COMMIT =		4e4f5fc6bdac96f5281a3ebeb0fee78df7b1a498
KDE_VERSION =		7

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui jasper m mng tiff
WANTLIB += webp webpdemux webpmux

LIB_DEPENDS =		graphics/jasper \
			graphics/tiff \
			graphics/libmng \
			graphics/libwebp

FLAVORS =		debug

pre-configure:
	${QT5_GEN_INCLUDES}

.include <bsd.port.mk>
