COMMENT =	safe, simple git synchronization

GH_ACCOUNT =	simonthum
GH_PROJECT =	git-sync
GH_COMMIT =	23bfc0ea32121a30aeb8e557bfb189693cb15603
REVISION =	1

DISTNAME =	git-sync-20220127

CATEGORIES =	sysutils

# CC0
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		shells/bash

NO_BUILD =		Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/git-sync ${PREFIX}/bin/

.include <bsd.port.mk>
