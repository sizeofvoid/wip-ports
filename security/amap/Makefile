COMMENT=	application protocol detection tool

DISTNAME=	amap-5.4
CATEGORIES=	security
REVISION=	1

HOMEPAGE=	https://github.com/vanhauser-thc/THC-Archive

# GPL with attribution requirement if used in commercial tools or to provide
# commercial services
PERMIT_PACKAGE=	Yes

WANTLIB += c crypto ssl pcre

SITES=		https://github.com/vanhauser-thc/THC-Archive/raw/master/Tools/

LIB_DEPENDS=	devel/pcre

CONFIGURE_STYLE= simple
CONFIGURE_ARGS=	--prefix='${PREFIX}'

NO_TEST=	Yes
MAKE_FLAGS=	OPT="${CFLAGS} -I${LOCALBASE}/include"

post-extract:
	@chmod -R u+w ${WRKDIST}
	@perl -pi -e "s,\"\.\/\",\"$(TRUEPREFIX)\/share\/amap\/\"," \
		${WRKSRC}/amap-lib.c

.include <bsd.port.mk>
