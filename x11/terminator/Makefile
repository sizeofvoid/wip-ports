COMMENT =		GTK3 terminal emulator with split-window and tabs support

VERSION =		1.92
DISTNAME =		terminator-${VERSION}
REVISION =		9

CATEGORIES =		x11

HOMEPAGE =		https://gnome-terminator.org

# GPLv2
PERMIT_PACKAGE=	Yes

SITES =			https://github.com/gnome-terminator/terminator/releases/download/v${VERSION}/

MODULES =		lang/python \
			textproc/intltool

RUN_DEPENDS =		devel/desktop-file-utils \
			devel/gsettings-desktop-schemas \
			devel/libnotify \
			devel/py-configobj \
			devel/py-gobject3 \
			devel/vte3 \
			sysutils/py-psutil \
			x11/gtk+3 \
			x11/gtk+4,-guic \
			x11/keybinder3

MODPY_PYBUILD =		setuptools
MODPY_SETUP_ARGS =	--without-icon-cache

# --single-version-externally-managed option used by MODPY doesn't exist
MODPY_DISTUTILS_INSTALL = install --prefix=${LOCALBASE} --root=${DESTDIR}

do-test:
	${SUBST_CMD} ${WRKSRC}/run_tests
	cd ${WRKSRC} && /bin/sh ./run_tests

.include <bsd.port.mk>
