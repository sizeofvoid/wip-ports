COMMENT =	Enigma levels to the game chroma

DISTNAME =	chroma-enigma-0.20101210

CATEGORIES =	games x11

HOMEPAGE =	http://level7.org.uk/chroma/

MAINTAINER =	LEVAI Daniel <leva@ecentrum.hu>

# Public Domain
PERMIT_PACKAGE =	Yes

SITES =		http://leva.ecentrum.hu/openbsd/

RUN_DEPENDS =	games/chroma

NO_BUILD =	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/chroma/levels/enigma
	${INSTALL_DATA} ${WRKDIST}/levels/enigma/* \
		 ${PREFIX}/share/chroma/levels/enigma/

.include <bsd.port.mk>
