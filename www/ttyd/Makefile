COMMENT=	share your terminal over the web

GH_ACCOUNT=	tsl0922
GH_PROJECT=	ttyd
GH_TAGNAME=	1.7.7

CATEGORIES=	www

# MIT
PERMIT_PACKAGE=	Yes

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

WANTLIB += c crypto json-c ssl util uv websockets z

MODULES=	devel/cmake
# vim is needed for xxd
BUILD_DEPENDS=	editors/vim
LIB_DEPENDS=	www/libwebsockets \
		devel/json-c

.include <bsd.port.mk>
