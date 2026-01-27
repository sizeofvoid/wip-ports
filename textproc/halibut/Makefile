COMMENT =	yet another free document preparation system

DISTNAME =	halibut-1.3
CATEGORIES =	textproc
HOMEPAGE =	https://www.chiark.greenend.org.uk/~sgtatham/halibut/
SITES =		${HOMEPAGE}${DISTNAME}/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB =	c

MODULES =	devel/cmake

CONFIGURE_ARGS +=	-DCMAKE_POLICY_VERSION_MINIMUM=3.5

.include <bsd.port.mk>
