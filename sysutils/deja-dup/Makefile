COMMENT=		simple encrypted backup tool for GNOME

DIST_TUPLE=		gnome World deja-dup 48.4 .

CATEGORIES=		sysutils

HOMEPAGE=		https://apps.gnome.org/en/DejaDup/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += adwaita-1 c gio-2.0 glib-2.0 gobject-2.0 gpg-error
WANTLIB += gtk-4 intl json-glib-1.0 pango-1.0 secret-1 soup-3.0

MODULES=		devel/meson \
			devel/dconf \
			lang/python \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache vala yelp

RUN_DEPENDS=		devel/py-gobject3 \
			sysutils/duplicity \
			x11/gnome/gvfs

LIB_DEPENDS=		devel/json-glib \
			devel/libsoup3 \
			x11/gnome/libsecret \
			x11/gnome/libadwaita

CONFIGURE_ARGS +=	-Denable_restic=true

DEBUG_PACKAGES=		${BUILD_PACKAGES}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/deja-dup
	mv ${WRKINST}/etc/xdg ${PREFIX}/share/examples/deja-dup/

.include <bsd.port.mk>
