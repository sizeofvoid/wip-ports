COMMENT=	X11-based asteroids-style arcade

DISTNAME=	xasteroids
PKGNAME=	xasteroids-5.0
REVISION=	4
CATEGORIES=	games

SITES=		${SITE_R5CONTRIB}
EXTRACT_SUFX=	.sh.Z

PERMIT_PACKAGE=	Yes

WANTLIB=	X11 Xau Xdmcp Xext c m xcb

CONFIGURE_STYLE=imake

WRKDIST=	${WRKDIR}

NO_TEST=	Yes

post-extract:
	@cp ${FILESDIR}/Imakefile ${WRKSRC}
	@mv ${WRKSRC}/xast.man ${WRKSRC}/xasteroids.man

.include <bsd.port.mk>
