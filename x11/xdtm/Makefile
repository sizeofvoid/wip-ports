COMMENT=		Desktop Manager: a graphical shell for X11

DISTNAME=		xdtm-2.5.8
REVISION=		2
CATEGORIES=		x11

SITES=			${SITE_XCONTRIB:=applications/}

# BSD-like, badly worded
PERMIT_PACKAGE=	Yes

WANTLIB=		ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xt c m

CONFIGURE_STYLE=	imake
WRKDIST=		${WRKDIR}/xdtm

NO_TEST=		Yes

.include <bsd.port.mk>
