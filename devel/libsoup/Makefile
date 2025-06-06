PORTROACH=		limit:^2

COMMENT =		HTTP client/server library for GNOME

GNOME_PROJECT =		libsoup
GNOME_VERSION =		2.74.3
REVISION =		3

SHARED_LIBS += soup-2.4                  10.6 # 1.11.2
SHARED_LIBS += soup-gnome-2.4            8.1 # 1.11.2

API_VERSION =		2.4
SUBST_VARS =		API_VERSION

CATEGORIES =		devel www

MAINTAINER =		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += brotlidec gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += intl psl sqlite3 xml2 z

MODULES =		devel/meson \
			x11/gnome

MODGNOME_TOOLS =	gobject-introspection vala

RUN_DEPENDS =		net/glib2-networking

LIB_DEPENDS =		archivers/brotli \
			databases/sqlite3 \
			devel/glib2 \
			net/libpsl \
			textproc/libxml

CONFIGURE_ARGS =	-Dgssapi=disabled \
			-Dntlm=disabled \
			-Dsysprof=disabled \
			-Dtests=false \
			-Dtls_check=false

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
