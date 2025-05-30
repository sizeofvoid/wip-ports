# Many parts are copied from www/chromium port, so keep in sync
# INFO
# Based on Chromium version: 87.0.4280.144
# Patched with security patches up to: 119.0.6045.123

USE_WXNEEDED =		Yes
USE_NOBTCFI =		Yes

QT5NAME =		QtWebEngine
KDE_COMMIT =		17fd3176988586168bee8654008a097a5f23ec1d
KDE_VERSION =		11
REVISION =		2

# Override
VERSION =		${QT5_WEBENGINE_VERSION}
QT5_VERSION =		${QT5_WEBENGINE_VERSION}

# https://invent.kde.org/qt/qt/qtwebengine-chromium/-/commits/87-based?ref_type=heads
DIST_TUPLE +=	kde qt qt/qtwebengine-chromium \
		1cbcced5046ed659707a4d6ce548a6fd04b20b4b src/3rdparty

ONLY_FOR_ARCHS =	amd64 aarch64 i386

DPB_PROPERTIES =	parallel parallel2
.if ${MACHINE_ARCH} == "i386"
DPB_PROPERTIES +=	lonesome
.endif

COMMENT =		Chromium-based web engine for Qt5

CATEGORIES =		www

SHARED_LIBS +=  Qt5WebEngine              3.0 # 5.15
SHARED_LIBS +=  Qt5WebEngineCore          3.0 # 5.15
SHARED_LIBS +=  Qt5WebEngineWidgets       3.0 # 5.15

# XXX TODO
# libQt5Pdf needs to link explicitly against libQt5WebEngineCore?
#SHARED_LIBS +=  Qt5Pdf                    1.0 # 5.15
#SHARED_LIBS +=  Qt5PdfWidgets             1.0 # 5.15

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Designer Qt5Gui Qt5Network
WANTLIB += Qt5Positioning Qt5PrintSupport Qt5Qml Qt5QmlModels
WANTLIB += Qt5Quick Qt5QuickWidgets Qt5WebChannel Qt5Widgets Qt5Xml
WANTLIB += X11 X11-xcb Xcomposite Xdamage Xext Xfixes Xi Xrandr
WANTLIB += Xrender Xtst c cbor crypto cups dbus-1 drm event execinfo
WANTLIB += expat fido2 fontconfig freetype gbm glib-2.0 graphite2
WANTLIB += harfbuzz harfbuzz-subset intl jpeg kvm lcms2 lzma m
WANTLIB += minizip nspr4 nss3 nssutil3 opus pcre2-8 plc4 plds4
WANTLIB += png sharpyuv smime3 snappy sndio usbhid util vpx webp
WANTLIB += webpdemux webpmux xcb xkbcommon xml2 xslt z

# BSD-like, patents
PERMIT_PACKAGE =	Yes

MODULES =	lang/python \
		devel/qmake

MODPY_RUNDEP =	No

RUN_DEPENDS =	fonts/noto/fonts \
		graphics/libexif \
		x11/gtk+3,-cups

BUILD_DEPENDS =	archivers/bzip2 \
		devel/bison \
		devel/gperf \
		devel/ninja \
		devel/py-six \
		lang/node \
		shells/bash \
		sysutils/flock \
		sysutils/pciutils \
		x11/gtk+3 \
		x11/py-xcbgen

LIB_DEPENDS =	archivers/minizip \
		archivers/snappy \
		audio/opus \
		devel/harfbuzz \
		graphics/lcms2 \
		graphics/libwebp \
		multimedia/libvpx \
		print/cups,-libs \
		security/nss \
		textproc/libxslt \
		x11/qt5/qtdeclarative \
		x11/qt5/qtlocation \
		x11/qt5/qttools \
		x11/qt5/qtwebchannel \
		x11/xkbcommon

GN_SYSTEM_LIBS=	libevent libxml libxslt

CONFIGURE_ENV =		NINJAFLAGS="-j${MAKE_JOBS}" \
			NINJA_PATH="${LOCALBASE}/bin/ninja" \
			PATH=${WRKSRC}/bin:${LOCALBASE}/bin:${PATH}

MAKE_ENV +=		CC="${CC}" CXX="${CXX}" \
			C_INCLUDE_PATH="${LOCALBASE}/include:${X11BASE}/include" \
			CPLUS_INCLUDE_PATH="${LOCALBASE}/include:${X11BASE}/include" \
			LIBRARY_PATH="${LOCALBASE}/lib:${X11BASE}/lib" \
			${CONFIGURE_ENV}

SUBST_VARS +=	WRKSRC WRKDIR WRKBUILD

MODQMAKE_RECURSIVE =	No

CHROMESRC =	${WRKDIST}/src/3rdparty/chromium

# most of these would fit better in post-extract, but between
# DIST_TUPLE and ../Makefile.inc that's complicated
pre-configure:
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python
.for _arch in x64 ia32 arm64
	mkdir -p ${CHROMESRC}/third_party/ffmpeg/chromium/config/Chrome/openbsd/${_arch}
.  for _dir in avcodec avformat avutil
	cp -pR ${CHROMESRC}/third_party/ffmpeg/chromium/config/Chrome/linux/${_arch}/lib${_dir} \
		${CHROMESRC}/third_party/ffmpeg/chromium/config/Chrome/openbsd/${_arch}/lib${_dir}
.  endfor
.endfor
	mkdir -p ${CHROMESRC}/media/audio/sndio ${CHROMESRC}/media/audio/openbsd
	cp ${FILESDIR}/hid_{service,connection}_fido.{cc,h} ${CHROMESRC}/services/device/hid
	cp ${FILESDIR}/sndio_{out,in}put.{cc,h} ${CHROMESRC}/media/audio/sndio
	cp ${FILESDIR}/audio_manager_openbsd.{cc,h} ${CHROMESRC}/media/audio/openbsd
	cp ${FILESDIR}/openbsd.pri ${WRKDIST}/src/buildtools/config/openbsd.pri
	cp ${FILESDIR}/openbsd.pri ${WRKDIST}/src/core/config/openbsd.pri
	cd ${CHROMESRC}; for six in \
	    third_party/blink/tools/blinkpy/third_party/wpt/wpt/tools/third_party/six/six.py \
	    third_party/catapult/third_party/six/six.py \
	    third_party/protobuf/third_party/six/six.py \
	    third_party/six/src/six.py \
	    tools/grit/third_party/six/__init__.py; do \
		cp ${MODPY_SITEPKG}/six.py $$six; \
	done
	mkdir -p ${CHROMESRC}/third_party/node/openbsd/node-openbsd/bin
	ln -sf ${TRUEPREFIX}/bin/node ${CHROMESRC}/third_party/node/openbsd/node-openbsd/bin/node
	# build with python3 (remove catapult)
	rm ${CHROMESRC}/content/browser/tracing/BUILD.gn
	# Regenerate build and perlasm files (force json to not overwrite our local gn patches)
	cd ${CHROMESRC}/third_party/boringssl && ${MODPY_BIN} src/util/generate_build_files.py json
	@cd ${WRKSRC} && env -i ${MAKE_ENV} ${CHROMESRC}/build/linux/unbundle/replace_gn_files.py \
		--system-libraries ${GN_SYSTEM_LIBS}
	# Rerun syncqt.pl -- otherwise the resulting package misses some forwarding headers.
	${QT5_GEN_INCLUDES}

post-configure:
	${SUBST_CMD} ${CHROMESRC}/build/gn_run_binary.py \
		${CHROMESRC}/v8/tools/run.py \
		${CHROMESRC}/tools/protoc_wrapper/protoc_wrapper.py

pre-fake:
# Fix version mismatches for CMake
.for module in WebEngine WebEngineCore WebEngineWidgets
	sed -i 's,${QT5_WEBENGINE_VERSION} $${_Qt5${module}_FIND_VERSION_EXACT},5.15.15 $${_Qt5${module}_FIND_VERSION_EXACT},g' \
		${WRKBUILD}/lib/cmake/Qt5${module}/Qt5${module}Config.cmake
.endfor


.include <bsd.port.mk>
