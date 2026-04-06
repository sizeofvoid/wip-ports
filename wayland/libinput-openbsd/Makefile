# XXX
# libinput-openbsd is not feature complete that the input works
# in a usable way in Wayland. There is still too little experience here.
# In the following ports libinput detection was deactivated
# audio/pulseaudio
# devel/sdl2
# games/bzflag
# graphics/gimp/stable
# misc/brltty
# sysutils/consolekit
# wayland/libei
# x11/gnome/mutter
# x11/kde-applications/kdenlive (cmake patch)
# x11/kde-applications/krfb (cmake patch)
# x11/x11vnc

COMMENT =	wscons(4) and kqueue(2) based port of libinput

CATEGORIES =	x11 wayland

GH_ACCOUNT =	sizeofvoid
GH_PROJECT =	libopeninput
GH_COMMIT =	dcf8584ec3f5cde2a2098de25276242d2d815cc7
REVISION =	1

DISTNAME =	libinput-openbsd-1.30.2

SHARED_LIBS =	input	0.3

WANTLIB += epoll-shim m udev

# BSD
PERMIT_PACKAGE =	Yes

MODULES =	devel/meson \
		lang/python

LIB_DEPENDS =	devel/epoll-shim \
		sysutils/libudev-openbsd

CONFIGURE_ARGS =	-Dlibwacom=false \
			-Ddocumentation=false

# XXX debugging
CFLAGS =		-O0 -g

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
