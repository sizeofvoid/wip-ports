COMMENT=		agent for Razor spam filtering networks

DISTNAME=		razor-agents-2.85
REVISION=		7
CATEGORIES=		mail
HOMEPAGE=		https://razor.sourceforge.net/

# Artistic License
PERMIT_PACKAGE=	Yes

WANTLIB=		c perl

SITES=			${SITE_SOURCEFORGE:=razor/}
EXTRACT_SUFX=		.tar.bz2

RUN_DEPENDS=		security/p5-Digest-SHA1>=1.0 \
			net/p5-Net-DNS>=0.23 \
			www/p5-URI>=1.19
BUILD_DEPENDS=		${RUN_DEPENDS}

CONFIGURE_STYLE= 	perl

.include <bsd.port.mk>
