COMMENT=		GUI toolkit for X11

DISTNAME=		xforms-1.2.4
REVISION=		3
CATEGORIES=		x11

SHARED_LIBS +=  forms                2.0      # 3.3
SHARED_LIBS +=  flimage              2.0      # 3.3
SHARED_LIBS +=  formsGL              2.0      # 3.3

HOMEPAGE=		http://xforms-toolkit.org/

SITES=			${SITE_SAVANNAH:=xforms/}

# LGPLv2.1
PERMIT_PACKAGE=	Yes

COMPILER=	base-clang ports-gcc base-gcc

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += GL ICE SM X11 X11-xcb Xdamage Xext Xfixes
WANTLIB += Xpm Xxf86vm c drm glapi jpeg m pthread
WANTLIB += xcb xcb-dri2 xcb-glx expat Xau Xdmcp xcb-dri3 xcb-present
WANTLIB += xcb-shm xcb-sync xcb-xfixes xshmfence z
WANTLIB += LLVM drm_amdgpu elf pciaccess xcb-randr

LIB_DEPENDS=		graphics/jpeg

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-extra-prefix=${LOCALBASE} \
			--disable-docs

.include <bsd.port.mk>
