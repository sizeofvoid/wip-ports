COMMENT =	collection of tests for VA-API

GH_ACCOUNT = intel
GH_PROJECT = libva-utils
GH_TAGNAME = 2.22.0

CATEGORIES = graphics multimedia

WANTLIB += ${COMPILER_LIBCXX} X11 c drm m va va-drm va-wayland
WANTLIB += va-x11 wayland-client

#MIT
PERMIT_PACKAGE = Yes

LIB_DEPENDS =	multimedia/vaapi/libva

MODULES =	devel/meson

MODMESON_CONFIGURE_ARGS =	-Dtests=true

.include <bsd.port.mk>
