QT6NAME =	QtMultimedia
COMMENT =	Qt6 multimedia components
PKGSPEC =	qt6-qtmultimedia-${QT6_PKGSPEC}

SHARED_LIBS +=  Qt6Multimedia             7.0 # 6.7
SHARED_LIBS +=  Qt6MultimediaQuick        5.0 # 6.7
SHARED_LIBS +=  Qt6MultimediaWidgets      1.0 # 6.7
SHARED_LIBS +=  Qt6SpatialAudio           2.0 # 6.7
SHARED_LIBS +=	Qt6Quick3DSpatialAudio    0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} EGL GL Qt6Core Qt6Gui Qt6Network
WANTLIB += Qt6OpenGL Qt6Qml Qt6QmlModels Qt6Quick Qt6Quick3D Qt6Quick3DRuntimeRender
WANTLIB += Qt6Quick3DUtils Qt6ShaderTools Qt6Widgets X11 Xext
WANTLIB += Xrandr aom avcodec avformat avutil bz2 c crypto dav1d
WANTLIB += drm glib-2.0 gobject-2.0 gsm gstallocators-1.0 gstapp-1.0
WANTLIB += gstaudio-1.0 gstbase-1.0 gstgl-1.0 gstpbutils-1.0 gstphotography-1.0
WANTLIB += gstreamer-1.0 gstvideo-1.0 gthread-2.0 iconv intl lzma
WANTLIB += m mp3lame opus pulse speex ssl swresample swscale theoradec
WANTLIB += theoraenc va va-drm va-x11 vorbis vorbisenc vpx x264
WANTLIB += x265 xkbcommon xml2 xvidcore z

BUILD_DEPENDS =	graphics/vulkan-loader \
		x11/qt6/qtshadertools \
		x11/qt6/qtsvg

LIB_DEPENDS =	archivers/bzip2 \
		archivers/xz \
		audio/gsm \
		audio/lame \
		audio/libvorbis \
		audio/opus \
		audio/pulseaudio \
		audio/speex \
		devel/gettext \
		devel/glib2 \
		graphics/ffmpeg \
		multimedia/aom \
		multimedia/dav1d \
		multimedia/gstreamer1/core \
		multimedia/gstreamer1/plugins-bad \
		multimedia/gstreamer1/plugins-base \
		multimedia/libvpx \
		multimedia/x264 \
		multimedia/x265 \
		multimedia/xvidcore \
		textproc/libxml \
		x11/qt6/qtdeclarative \
		x11/qt6/qtquick3d \
		x11/qt6/qtshadertools \
		x11/xkbcommon

CONFIGURE_ARGS =	-DQT_FEATURE_ffmpeg=ON \
			-DQT_FEATURE_gstreamer_1_0=ON \
			-DQT_FEATURE_vaapi=OFF

MODCMAKE_LDFLAGS +=	-L${X11BASE}/lib

.include <bsd.port.mk>
