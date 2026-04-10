COMMENT=	fully-featured XMPP client written in Python
MODPY_DISTV=	2.4.5
DISTNAME=	gajim-${MODPY_DISTV}
CATEGORIES=	net x11

HOMEPAGE=	https://www.gajim.org

MAINTAINER =	Florian Viehweger <openbsd@out-of-creativity.de>

SITES=		${HOMEPAGE}/downloads/${MODPY_DISTV:R}/

# GPLv3 only
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools

BUILD_DEPENDS=	devel/gettext,-tools

RUN_DEPENDS=	audio/gsound \
		databases/py-sqlalchemy \
		devel/desktop-file-utils \
		devel/glib2>=2.66.0 \
		devel/libsoup3 \
		devel/pango>=1.50.0 \
		devel/py-gobject3 \
		fonts/noto/emoji \
		graphics/py-Pillow \
		graphics/py-cairo \
		graphics/py-qrcode>=7.3.1 \
		multimedia/gstreamer1/plugins-good \
		multimedia/gstreamer1/py-gstreamer \
		net/py-nbxmpp>=7.1.0 \
		security/py-cryptodome \
		security/py-cryptography \
		security/py-gnupg \
		security/py-keyring \
		security/py-omemo-dr>=1.0.0 \
		security/py-openssl \
		security/py-truststore \
		sysutils/py-packaging \
		textproc/gspell \
		textproc/py-css-parser \
		textproc/py-emoji>=2.6.0 \
		textproc/py-precis_i18n \
		www/py-httpx \
		www/py-h2 \
		x11/dbus-python \
		x11/gnome/libadwaita \
		x11/gtk+4,-guic \
		x11/gtksourceview5

post-install:
	cd ${WRKSRC}; \
	${MODPY_BIN} make.py build; \
	${MODPY_BIN} make.py install --prefix=${PREFIX}
	mv ${PREFIX}/share/man/man1/* ${PREFIX}/man/man1/
	rmdir ${PREFIX}/share/{man/man1,man}
	gunzip ${PREFIX}/man/man1/*.gz

.include <bsd.port.mk>
