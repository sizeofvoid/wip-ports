ONLY_FOR_ARCHS =	${GO_ARCHS}

COMMENT =	expressive programming language and versatile shell
CATEGORIES =	shells

MODGO_MODNAME =	src.elv.sh
MODGO_VERSION =	v0.21.0
DISTNAME =	elvish-${MODGO_VERSION}

HOMEPAGE =	https://elv.sh/

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =	lang/go

NO_TEST =	Yes

.include "modules.inc"

.include <bsd.port.mk>
