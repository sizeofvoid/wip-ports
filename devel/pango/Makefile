PORTROACH=		skipv:1.90.0

COMMENT=		library for layout and rendering of text

GNOME_PROJECT=		pango
GNOME_VERSION=		1.56.4

SHARED_LIBS += pango-1.0                 3801.6 # 0.5600.4
SHARED_LIBS += pangoft2-1.0              3801.3 # 0.5600.4
SHARED_LIBS += pangoxft-1.0              3801.3 # 0.5600.4
SHARED_LIBS += pangocairo-1.0            3801.3 # 0.5600.4

CATEGORIES=		devel x11

HOMEPAGE=		https://pango.gnome.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xft Xrender c cairo fontconfig>=13.2 freetype fribidi
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 harfbuzz m

# C++ used in tests
COMPILER=		base-clang ports-gcc

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection

BUILD_DEPENDS=		devel/help2man

LIB_DEPENDS=		devel/glib2 \
			devel/fribidi \
			devel/harfbuzz

# XXX check if still needed at next release;
# (or replaced by adwaita-fonts?)
TEST_DEPENDS=		fonts/cantarell-fonts

CONFIGURE_ARGS=		-Dlibthai=disabled

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
