COMMENT =		makefile for ESP8266 and ESP32 Arduino projects

GH_ACCOUNT =		plerup
GH_PROJECT =		makeEspArduino
GH_TAGNAME =		6.6.5

PKGNAME =		makeesparduino-${GH_TAGNAME}
REVISION =		3

CATEGORIES =		devel

MAINTAINER =		Tracey Emery <tracey@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

RUN_DEPENDS +=		devel/arduino \
			devel/gmake

NO_TEST =		Yes

post-extract:
	sed -i 's,$$(LOCALBASE),${LOCALBASE},' ${WRKDIST}/os/OpenBSD.mk

do-build:
	# empty, can't use NO_BUILD because it disables build deps

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/makeEspArduino
	cp -r ${WRKDIST}/*.mk ${PREFIX}/share/makeEspArduino/
	cp -r ${WRKDIST}/os ${PREFIX}/share/makeEspArduino/
	cp -r ${WRKDIST}/tools ${PREFIX}/share/makeEspArduino/

post-install:
	${MODPY_COMPILEALL} ${PREFIX}/share/makeEspArduino/tools

.include <bsd.port.mk>
