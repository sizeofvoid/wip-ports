COMMENT=		GNOME's Tour & Greeter

GNOME_PROJECT=		gnome-tour
GNOME_VERSION=		47.0
REVISION=		0

# needed due to the devel/cargo MODULE
DISTFILES=		${GNOME_PROJECT}-${GNOME_VERSION}${EXTRACT_SUFX}

HOMEPAGE=		https://apps.gnome.org/Tour/

# GPLv3
# From Fedora:
# bundled rust crates all include either MIT or GPLv3+ as one of the possible
# licenses, which when compiled into gnome-tour binary together with GPLv3+
# gnome-tour source code results in effective GPLv3+ for the resulting binary
PERMIT_PACKAGE=		Yes

WANTLIB += ${MODRUST_WANTLIB}
WANTLIB += adwaita-1 gio-2.0 glib-2.0 gobject-2.0 gtk-4 intl m

MODULES=		devel/meson \
			lang/rust \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache

LIB_DEPENDS=		x11/gnome/libadwaita

# don't rebuild the gettext crate
MAKE_ENV=		GETTEXT_DIR=${LOCALBASE} \
			CARGO_BUILD_JOBS=${MAKE_JOBS}

pre-configure:
	mkdir -p ${WRKBUILD}/.cargo
	sed -e 's,directory = .*",directory = "${WRKSRC}/vendor",g' \
		${WRKSRC}/.cargo/config \
		>${WRKBUILD}/.cargo/config ${}

.include <bsd.port.mk>
