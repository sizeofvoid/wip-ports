COMMENT-main=		low-level multimedia framework - client & server
COMMENT-libs=		low-level multimedia framework - libraries

PW_PROJECT=		pipewire
PW_VERSION=		1.4.7
PKGNAME-libs=		lib${PW_PROJECT}-${PW_VERSION}

SHARED_LIBS += pipewire-0.3              0.3 # 0.1407.0

MULTI_PACKAGES=		-main -libs

WANTLIB-main += X11 Xfixes c canberra curses dbus-1 ebur128 epoll-shim
WANTLIB-main += fftw3f gio-2.0 glib-2.0 gobject-2.0 gstallocators-1.0
WANTLIB-main += gstaudio-1.0 gstbase-1.0 gstreamer-1.0 gstvideo-1.0
WANTLIB-main += m opus pipewire-0.3 pthread readline sndfile

WANTLIB-libs += intl pthread

MODULES=		devel/meson \
			lang/python

MODPY_RUNDEP=		No

BUILD_DEPENDS=		devel/doxygen \
			devel/gettext,-tools \
			devel/libstdthreads \
			textproc/py-docutils

LIB_DEPENDS-main=	${BASE_PKGPATH},-libs \
			audio/libcanberra \
			audio/libebur128 \
			audio/libsndfile \
			devel/epoll-shim \
			math/fftw3,-main,float \
			multimedia/gstreamer1/plugins-base \
			x11/dbus

LIB_DEPENDS-libs=	devel/gettext,-runtime

RUN_DEPENDS-main=	${MODDCONF_RUN_DEPENDS}

# needs a pipewire-session-manager; see patch-src_daemon_pipewire_conf_in
RUN_DEPENDS-main +=	multimedia/pipewire/wireplumber

RUN_DEPENDS-libs=	# empty

# libintl
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libepoll-shim" \
			LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS=		-Dman=enabled \
			-Dsession-managers=[] \
			-Dsystemd=disabled \
			-Dsystemd-user-service=disabled \
			-Dlogind=disabled \
			-Dudev=disabled \
			-Dlegacy-rtkit=false \
			-Dalsa=disabled \
			-Dflatpak=disabled \
			-Dselinux=disabled \
			-Dsnap=disabled

# until supported and/or proven useful
CONFIGURE_ARGS +=	-Dpipewire-alsa=disabled \
			-Dbluez5=disabled \
			-Dlibcamera=disabled \
			-Droc=disabled \
			-Decho-cancel-webrtc=disabled \
			-Draop=disabled \
			-Dlv2=disabled \
			-Davb=disabled \
			-Dlibffado=disabled \
			-Dlibmysofa=disabled \
			-Davahi=disabled

# PAM limits.d file
CONFIGURE_ARGS +=	-Drlimits-install=false

# only useful for examples which we don't install
CONFIGURE_ARGS +=	-Dsdl2=disabled

# only usesul for bluez5 which we disable above
CONFIGURE_ARGS +=	-Dlibusb=disabled

# needs udev
CONFIGURE_ARGS +=	-Dv4l2=disabled

# XXX needs O_TMPFILE
CONFIGURE_ARGS +=	-Dpipewire-v4l2=disabled

# XXX to be revisited; useful to replace Jack (audio/jack)
# Jack2 client
CONFIGURE_ARGS +=	-Djack=disabled
# Jack3 server
CONFIGURE_ARGS +=	-Dpipewire-jack=disabled


pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/daemon/pipewire.conf.in

# XXX to be revisited; useful to replace the pulseaudio daemon
# (audio/pulseaudio) but it seems to depend on systemd activation for now
CONFIGURE_ARGS +=	-Dlibpulse=disabled
# XXX prevent conflict with audio/pulseaudio that installs the same gschema;
# add devel/dconf to MODULES once we enable pulse support
post-install:
	rm -f ${PREFIX}/share/glib-2.0/schemas/org.freedesktop.pulseaudio.gschema.xml

.include <bsd.port.mk>
