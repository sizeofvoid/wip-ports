COMMENT =	text editing widgets for KDE
DISTNAME =	ktextwidgets-${VERSION}

SHARED_LIBS +=  KF6TextWidgets            0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6I18n KF6SonnetCore KF6SonnetUi
WANTLIB += KF6WidgetsAddons Qt6Core Qt6Gui Qt6Multimedia Qt6Network
WANTLIB += Qt6TextToSpeech Qt6Widgets m

BUILD_DEPENDS =	devel/gettext,-tools \
		x11/qt6/qtwebengine

LIB_DEPENDS =	devel/kf6/kcompletion>=${MODKF6_VERSION} \
		devel/kf6/kconfig>=${MODKF6_VERSION} \
		devel/kf6/ki18n>=${MODKF6_VERSION} \
		devel/kf6/kwidgetsaddons>=${MODKF6_VERSION} \
		devel/kf6/kcolorscheme>=${MODKF6_VERSION} \
		devel/kf6/sonnet>=${MODKF6_VERSION} \
		x11/qt6/qtmultimedia \
		x11/qt6/qtspeech

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
