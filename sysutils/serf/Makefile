COMMENT=		decentralized service discovery and orchestration

MODGO_MODNAME=		github.com/hashicorp/serf
MODGO_VERSION=		v0.10.2
DISTNAME=		hashicorp-serf-${MODGO_VERSION:S/v//}

CATEGORIES=		sysutils net

HOMEPAGE=		https://www.serfdom.io/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>
# MPLv2.0
PERMIT_PACKAGE=	Yes

WANTLIB += c pthread

MODULES=		lang/go

.include "modules.inc"

.include <bsd.port.mk>
