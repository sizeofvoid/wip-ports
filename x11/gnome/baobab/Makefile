COMMENT=		graphical disk usage analyzer

GNOME_PROJECT=		baobab
GNOME_VERSION=		48.0

HOMEPAGE=		https://apps.gnome.org/Baobab/

# GPLv2 - GFDLv1.1
PERMIT_PACKAGE=		Yes

WANTLIB += adwaita-1 c cairo gio-2.0 glib-2.0 gobject-2.0 graphene-1.0
WANTLIB += gtk-4 intl m pango-1.0

LIB_DEPENDS=		x11/gnome/libadwaita

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS += desktop-file-utils gobject-introspection yelp
MODGNOME_TOOLS += gtk-update-icon-cache vala

.include <bsd.port.mk>
