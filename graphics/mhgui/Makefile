COMMENT=	GUI widget library used in MakeHuman

DISTNAME=	mhgui-0.2
CATEGORIES=	graphics
REVISION=	8

SHARED_LIBS +=  mhgui                1.0      # unknown

HOMEPAGE=	http://www.dedalo-3d.com/

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLU ICE SM X11 X11-xcb Xext
WANTLIB += Xfixes Xi Xmu Xrandr Xrender Xt Xxf86vm animorph drm expat
WANTLIB += glapi glut m png pthread xcb xcb-dri2 xcb-dri3 xcb-glx
WANTLIB += xcb-present xcb-sync xcb-xfixes xshmfence z
WANTLIB += Xau Xdmcp xcb-shm
WANTLIB += LLVM drm_amdgpu elf pciaccess xcb-randr

COMPILER =	base-clang ports-gcc base-gcc

SITES=		${SITE_SOURCEFORGE:=makehuman/}

LIB_DEPENDS=	graphics/animorph>=0.3 \
		graphics/freeglut \
		graphics/png

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/GL" \
		LDFLAGS="-L${LOCALBASE}/lib -lz -lm"

# remove useless files (ChangeLog, INSTALL...)
post-install:
	rm -r ${PREFIX}/share/doc

.include <bsd.port.mk>
