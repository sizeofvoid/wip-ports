COMMENT =	simple and fast file manager

GH_ACCOUNT =	dylanaraps
GH_PROJECT =	fff
GH_TAGNAME =	2.2
REVISION =	0

CATEGORIES =	sysutils

# MIT
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		converters/libiconv \
			devel/gettext,-runtime \
			devel/xdg-utils \
			shells/bash

FAKE_FLAGS =		DESTDIR= MANDIR="${DESTDIR}${PREFIX}/man"

NO_BUILD =		Yes
NO_TEST =		Yes

.include <bsd.port.mk>
