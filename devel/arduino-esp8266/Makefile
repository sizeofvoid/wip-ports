COMMENT =	esp8266 arduino core toolset
V =		3.0.2
DISTNAME =	esp8266-${V}
PKGNAME =	arduino-${DISTNAME}
REVISION =	5

CATEGORIES =	devel

MAINTAINER =	Tracey Emery <tracey@openbsd.org>

#LGPLv2.1, MIT, BSD, Zlib
PERMIT_PACKAGE =	Yes

SITES = 	https://github.com/esp8266/Arduino/releases/download/${V}/
EXTRACT_SUFX =		.zip

MODULES =		lang/python

BUILD_DEPENDS =		devel/xtensa-lx106-elf/gcc \
			devel/xtensa-lx106-elf/lx106-hal \
			devel/xtensa-lx106-elf/newlib
RUN_DEPENDS +=		devel/arduino \
			devel/mklittlefs \
			devel/mkspiffs \
			devel/py-esptool \
			devel/xtensa-lx106-elf/binutils \
			devel/xtensa-lx106-elf/gcc \
			devel/xtensa-lx106-elf/lx106-hal \
			devel/xtensa-lx106-elf/newlib

INSTALLDIR =		${PREFIX}/share/arduino/hardware/espressif/esp8266

NO_TEST =		Yes

pre-build:
	${SUBST_CMD} ${WRKDIST}/platform.txt

do-build:

# libc is no longer supplied, so we need to get it from newlib
# note, a symlink doesn't work here, and I don't know why
do-install:
	@mkdir -p ${INSTALLDIR}
	@cp -r ${WRKDIST}/* ${INSTALLDIR}
	@cd ${INSTALLDIR}/tools/sdk && \
	    ${INSTALL_DATA_DIR} libc/xtensa-lx106-elf && \
	    cp -r ${LOCALBASE}/xtensa-lx106-elf/xtensa-lx106-elf/include \
	    libc/xtensa-lx106-elf/
	${MODPY_COMPILEALL} ${INSTALLDIR}/tools/

.include <bsd.port.mk>
