# http://rawpedia.rawtherapee.com/The_Floating_Point_Engine
ONLY_FOR_ARCHS =	amd64

COMMENT =		RAW image processing application

V = 			5.12
DISTNAME =		rawtherapee-${V}

CATEGORIES =		graphics

HOMEPAGE =		https://www.rawtherapee.com/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += X11 atk-1.0 atkmm-1.6 c cairo cairo-gobject cairomm-1.0
WANTLIB += canberra canberra-gtk3 exiv2 expat fftw3f gdk-3 gdk_pixbuf-2.0
WANTLIB += gdkmm-3.0 gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 gobject-2.0
WANTLIB += gthread-2.0 gtk-3 gtkmm-3.0 harfbuzz intl iptcdata jpeg jxl
WANTLIB += jxl_threads lcms2 lensfun m pango-1.0 pangocairo-1.0 pangomm-1.4
WANTLIB += png pthread raw_r rsvg-2 sigc-2.0 tiff z ${COMPILER_LIBCXX}

# c++11
COMPILER =		base-clang ports-gcc

SITES =			https://www.rawtherapee.com/shared/source/ \
			https://github.com/RawTherapee/RawTherapee/releases/download/${V}/
EXTRACT_SUFX = 		.tar.xz

MODULES =		devel/cmake

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+4,-guic

LIB_DEPENDS =		audio/libcanberra,-gtk3 \
			graphics/exiv2 \
			graphics/libiptcdata \
			graphics/lcms2 \
			graphics/lensfun \
			graphics/libjxl \
			graphics/libraw \
			math/fftw3,float \
			x11/gtk3mm

CONFIGURE_ARGS =	-DBUILD_SHARED=ON \
			-DOPTION_OMP=OFF \
			-DWITH_SYSTEM_LIBRAW=ON \
			-Wno-dev

MODCMAKE_LDFLAGS =	-L${X11BASE}/lib

NO_TEST = 		Yes

.include <bsd.port.mk>
