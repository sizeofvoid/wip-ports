GH_ACCOUNT =	pithos
GH_PROJECT =	pithos
GH_TAGNAME =	1.1.2
REVISION =	15

COMMENT =	Pandora client for GNOME
CATEGORIES =	audio x11
SUBST_VARS +=	GH_TAGNAME

HOMEPAGE =	http://pithos.github.io/

# Github page says GPLv3+
# But the code says GPLv3 only
# pithos/pandora/blowfish.py: AGPLv3+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =	audio/py-last>=0.5.11 \
		devel/desktop-file-utils \
		devel/libnotify \
		devel/py-gobject3 \
		devel/py-xdg \
		multimedia/gstreamer1/plugins-good \
		multimedia/gstreamer1/libav \
		x11/dbus-python \
		x11/keybinder3 \
		x11/gtk+4,-guic

TEST_DEPENDS =	audio/py-last>=0.5.11

pre-configure:
	sed -i "s,/usr/s,s,g" ${WRKSRC}/setup.py

.include <bsd.port.mk>
