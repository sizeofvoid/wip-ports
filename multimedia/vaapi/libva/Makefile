COMMENT =	VA_API implementation

GH_ACCOUNT =	intel
GH_PROJECT =	libva
GH_TAGNAME =	2.22.0

SHARED_LIBS +=  va-drm                    0.0 # 0.0
SHARED_LIBS +=  va-glx                    0.0 # 0.0
SHARED_LIBS +=  va-wayland                0.0 # 0.0
SHARED_LIBS +=  va-x11                    0.0 # 0.0
SHARED_LIBS +=  va                        0.0 # 0.0

CATEGORIES =	graphics multimedia

WANTLIB += GL X11 X11-xcb Xext Xfixes drm wayland-client xcb xcb-dri3

# Generic License inside the COPYING file. Permits all.
PERMIT_PACKAGE =	Yes

MODULES =	devel/meson

LIB_DEPENDS =	wayland/wayland

.include <bsd.port.mk>
