COMMENT=	webcam plugin for GkrellM2

V=		2.0.0
DISTNAME=	gkrellkam-${V}
REVISION=	12
CATEGORIES=	graphics

HOMEPAGE=	https://gkrellkam.sourceforge.net

SITES=		${SITE_SOURCEFORGE:=gkrellkam/}
DISTFILES=	gkrellkam_${V}.tar.gz

WANTLIB=	# empty

PLUGIN=		${WRKSRC}/gkrellkam2.so

post-install:
	${INSTALL_MAN} ${WRKSRC}/gkrellkam-list.5 ${PREFIX}/man/man5/gkrellkam.5

.include <bsd.port.mk>
