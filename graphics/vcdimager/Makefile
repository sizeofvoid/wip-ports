COMMENT=		(S)VCD authoring software

DISTNAME=		vcdimager-2.0.1
CATEGORIES=		graphics multimedia
REVISION=		0

SHARED_LIBS +=  vcdinfo              0.0      # 2.0

SITES=			${SITE_GNU:=vcdimager/}

HOMEPAGE=		http://www.vcdimager.org/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB =  c cdio iconv intl iso9660 lzma m popt pthread xml2 z

USE_GMAKE=		Yes

LIB_DEPENDS=		textproc/libxml \
			audio/libcdio \
			devel/popt

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

SEPARATE_BUILD=		Yes

.include <bsd.port.mk>
