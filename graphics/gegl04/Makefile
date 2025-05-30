USE_NOBTCFI-aarch64 =	Yes# fortran

COMMENT=		graph based image processing framework (API version 0.4)

V=			0.4.62
DISTNAME=		gegl-${V}
PKGNAME=		gegl04-${V}
EXTRACT_SUFX=		.tar.xz

SHARED_LIBS += gegl-0.4                  0.5 # 0.461.1

API_VERSION=		${V:R}
SUBST_VARS=		API_VERSION

CATEGORIES=		graphics devel

HOMEPAGE=		http://gegl.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3/LGPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += babl-0.1 c cairo gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 intl jasper jpeg json-glib-1.0 lcms2 m
WANTLIB += pango-1.0 pangocairo-1.0 png poppler-glib raw rsvg-2
WANTLIB += tiff webp umfpack

COMPILER=		base-clang ports-gcc base-gcc
COMPILER_LANGS=		c

SITES=			http://download.gimp.org/pub/gegl/${API_VERSION}/

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		gi-docgen gobject-introspection vala

BUILD_DEPENDS=		devel/gettext,-tools \
			graphics/libgexiv2 \
			shells/bash \
			www/netsurf/libnsgif

LIB_DEPENDS=		devel/json-glib \
			graphics/babl \
			graphics/lcms2 \
			graphics/libraw \
			graphics/libwebp \
			math/suitesparse \
			print/poppler \
			x11/gnome/librsvg

CONFIGURE_ARGS=		-Ddocs=false \
			-Dgraphviz=disabled \
			-Dlensfun=disabled \
			-Dlibav=disabled \
			-Dlibspiro=disabled \
			-Dlibv4l=disabled \
			-Dlibv4l2=disabled \
			-Dlua=disabled \
			-Dmaxflow=disabled \
			-Dmrg=disabled \
			-Dopenmp=disabled \
			-Dopenexr=disabled \
			-Dsdl1=disabled \
			-Dsdl2=disabled

.if ${MACHINE_ARCH} == "amd64"
PKG_ARGS +=		-Damd64=1
.else
PKG_ARGS +=		-Damd64=0
.endif

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
