COMMENT=		Wake On Lan client

DISTNAME=		wol-0.7.1
REVISION=		7
CATEGORIES=		net

HOMEPAGE=		https://ahh.sourceforge.net/wol/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c iconv intl pthread

SITES=			${SITE_SOURCEFORGE:=ahh/}

LIB_DEPENDS=		devel/gettext,-runtime

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
