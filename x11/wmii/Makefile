COMMENT=	dynamic window manager

DISTNAME=	wmii-3.6
REVISION=	9
CATEGORIES=	x11

HOMEPAGE=	https://github.com/0intro/wmii

MAINTAINER=	Rares Aioanei <schaiba@gmail.com>

# MIT/X
PERMIT_PACKAGE=	Yes

SITES=		https://dl.suckless.org/wmii/

WANTLIB += X11 Xext c iconv m

LIB_DEPENDS=	converters/libiconv

BUILD_DEPENDS=	devel/libixp

RUN_DEPENDS=	x11/dmenu

NO_TEST=	Yes

MAKE_FLAGS=	noisycc=1
FAKE_FLAGS=	PREFIX=${WRKINST}${LOCALBASE} \
		MAN=${WRKINST}${LOCALBASE}/man

.include <bsd.port.mk>
