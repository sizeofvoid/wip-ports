MODPY_EGG_VERSION =	272
COMMENT =	in-depth comparison of files, archives, and directories
DISTNAME =	diffoscope-${MODPY_EGG_VERSION}
CATEGORIES =	sysutils devel

HOMEPAGE =	https://diffoscope.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools

PORTHOME =	${WRKDIST}

RUN_DEPENDS =	archivers/py-libarchive-c${MODPY_FLAVOR} \
		devel/py-magic${MODPY_FLAVOR}

# Could use a port of tlsh to make more tests work
TEST_DEPENDS =	devel/py-argcomplete${MODPY_FLAVOR} \
		devel/py-progressbar${MODPY_FLAVOR} \
		sysutils/binwalk \
		sysutils/py-distro${MODPY_FLAVOR} \
		textproc/py-defusedxml${MODPY_FLAVOR}

.include <bsd.port.mk>
