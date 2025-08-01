BROKEN-hppa=		linking .libs/python-libpst.o fails

COMMENT-main=		read and convert Microsoft Outlook mail files
COMMENT-python=		python interface to libpst

DISTNAME=		libpst-0.6.76
REVISION=		5

SHARED_LIBS +=  pst                  3.0      # 5.17

PKGNAME-python=		py${MODPY_MAJOR_VERSION}-${DISTNAME}

CATEGORIES=		converters mail

HOMEPAGE=		http://www.five-ten-sg.com/libpst/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += m pthread z ${COMPILER_LIBCXX}

WANTLIB-main += ${WANTLIB} iconv intl
WANTLIB-main += bz2 c expat ffi fontconfig freetype gd gio-2.0
WANTLIB-main += glib-2.0 gobject-2.0 gsf-1 jpeg pcre2-8 png zstd
WANTLIB-main += tiff webp xml2 z m pthread ${COMPILER_LIBCXX} lzma

WANTLIB-python += ${WANTLIB} iconv
WANTLIB-python += pst boost_python${MODPY_VERSION:C/\.//g}-mt

COMPILER =		base-clang ports-gcc base-gcc

SITES=			http://www.five-ten-sg.com/libpst/packages/

MULTI_PACKAGES=		-main -python

MODULES=		lang/python

BUILD_DEPENDS=		graphics/ImageMagick \
			devel/py-setuptools
RUN_DEPENDS-main=	graphics/ImageMagick
LIB_DEPENDS-main=	devel/libgsf \
			graphics/gd

LIB_DEPENDS-python=	${BASE_PKGPATH} \
			devel/boost

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-pst-debug \
			--disable-static-tools \
			--enable-libpst-shared
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			PYTHON_LDFLAGS="$$(pkg-config --libs python${MODPY_MAJOR_VERSION})" \
			PYTHON_BIN="python${MODPY_VERSION}"

# XXX eats all memory
.if ${MACHINE_ARCH} == "sparc64" || ${MACHINE_ARCH} == "hppa"
CFLAGS+=	-O0
.endif

DEBUG_PACKAGES=		${BUILD_PACKAGES}

FAKE_FLAGS=		htmldir="${PREFIX}/share/doc/libpst/" \
			htmldeveldir="${PREFIX}/share/doc/libpst/devel/"

post-install:
	rm ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/*.{a,la}

.include <bsd.port.mk>
