COMMENT=	multi-screen window manager, with shm support for brltty

# updates depend on availability of patches, not of updates to screen itself
PORTROACH=	ignore:1

DISTNAME=	screen-4.0.3
REVISION=	10
CATEGORIES=	misc
SITES=		${SITE_GNU:=screen/}

HOMEPAGE=	https://www.gnu.org/software/screen/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=	c curses util

AUTOCONF_VERSION=2.57
CONFIGURE_STYLE= autoconf no-autoheader
CONFIGURE_ARGS=	--with-sys-screenrc="${SYSCONFDIR}/screenrc"

FLAVORS=	shm
FLAVOR?=	shm

ALL_TARGET=	screen screen.info

pre-build:
	${SUBST_CMD} ${WRKSRC}/doc/screen.1

post-install:
	@cd ${PREFIX}/bin && mv -f screen-* screen
	@chmod 755 ${PREFIX}/bin/screen
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/screen
	${INSTALL_DATA} ${WRKSRC}/etc/etcscreenrc \
		${PREFIX}/share/examples/screen/screenrc

.include <bsd.port.mk>
