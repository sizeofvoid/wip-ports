USE_WXNEEDED =		Yes

COMMENT =	IDE for C, C++, Python, QML/JavaScript and PHP

CATEGORIES =	devel x11
DISTNAME =	kdevelop-${MODKDE_GEAR_VERSION}

HOMEPAGE =	https://www.kdevelop.org/

SHARED_LIBS +=  KDevPlatformDebugger      5.0 # 5.2
SHARED_LIBS +=  KDevPlatformDocumentation 3.0 # 5.2
SHARED_LIBS +=  KDevPlatformInterfaces    3.2 # 5.2
SHARED_LIBS +=  KDevPlatformLanguage      7.0 # 5.2
SHARED_LIBS +=  KDevPlatformOutputView    2.0 # 5.2
SHARED_LIBS +=  KDevPlatformProject       3.0 # 5.2
SHARED_LIBS +=  KDevPlatformSerialization 5.0 # 5.2
SHARED_LIBS +=  KDevPlatformShell         6.0 # 5.2
SHARED_LIBS +=  KDevPlatformSublime       3.0 # 5.2
SHARED_LIBS +=  KDevPlatformTests         4.0 # 5.2
SHARED_LIBS +=  KDevPlatformUtil          3.2 # 5.2
SHARED_LIBS +=  KDevPlatformVcs           3.0 # 5.2
SHARED_LIBS +=  KDevClangPrivate          3.0 # 5.5
SHARED_LIBS +=  KDevCMakeCommon           2.1 # 5.5
SHARED_LIBS +=  KDevCompileAnalyzerCommon 0.0 # 5.5

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2+, LGPLv2.1+, GNU FDLv1.2
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX}

WANTLIB += llvm${MODCLANG_VERSION}/lib/clang

SITES =	${SITE_KDE:=stable/release-service/${MODKDE_GEAR_VERSION}/src/}

MODULES =	x11/kde \
		lang/clang \
		lang/python

MODKDE_KF5 =		Yes

MODCLANG_COMPILER_LINKS=No
MODCLANG_BUILDDEP=	No
MODPY_BUILDDEP =	No

BUILD_DEPENDS =	archivers/gtar \
		devel/boost \
		devel/clang-tools-extra \
		devel/cppcheck \
		devel/gettext,-tools \
		shells/bash-completion \
		lang/clazy \
		misc/shared-mime-info

RUN_DEPENDS =	devel/clang-tools-extra \
		devel/cppcheck \
		devel/desktop-file-utils \
		devel/gmake \
		lang/clazy \
		misc/shared-mime-info \
		x11/gtk+4,-guic \
		x11/kde-applications/kate \
		x11/kde-applications/konsole

LIB_DEPENDS =	${MODCLANG_LIB_DEPENDS} \
		devel/apr \
		devel/apr-util \
		devel/kf6/attica \
		devel/kf6/karchive \
		devel/kf6/kauth \
		devel/kf6/kbookmarks \
		devel/kf6/kcmutils \
		devel/kf6/kcodecs \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kdeclarative \
		devel/kf6/kguiaddons \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/kio \
		devel/kf6/kitemmodels \
		devel/kf6/kitemviews \
		devel/kf6/kjobwidgets \
		devel/kf6/knewstuff \
		devel/kf6/knotifications \
		devel/kf6/knotifyconfig \
		devel/kf6/kpackage \
		devel/kf6/kparts \
		devel/kf6/krunner \
		devel/kf6/kservice \
		devel/kf6/ktexteditor \
		devel/kf6/ktextwidgets \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/kxmlgui \
		devel/kf6/plasma-framework \
		devel/kf6/purpose \
		devel/kf6/solid \
		devel/kf6/sonnet \
		devel/kf6/syntax-highlighting \
		devel/kf6/threadweaver \
		devel/subversion \
		x11/grantlee-qt6>=5.3 \
		x11/kde-applications/libkomparediff2>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/okteta>=0.26.1v0 \
		x11/qt6/qtdeclarative \
		x11/qt6/qtlocation \
		x11/qt6/qttools \
		x11/qt6/qtwebchannel \
		x11/qt6/qtwebengine

TEST_IS_INTERACTIVE =	X11

TEST_DEPENDS =		${BUILD_PKGPATH}

TEST_ENV +=	QT_PLUGIN_PATH="${PREFIX}/lib/qt6/plugins"

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_KSysGuard=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_KF5SysGuard=ON \
			-DClang_DIR=${LOCALBASE}/llvm${MODCLANG_VERSION}/lib/cmake/clang

pre-configure:
	ln -sf ${LOCALBASE}/bin/gtar ${WRKDIR}/bin/tar

.include <bsd.port.mk>
