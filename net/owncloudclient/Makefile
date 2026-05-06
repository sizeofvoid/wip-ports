COMMENT =		owncloud sync client

V = 			6.0.3.18040
DISTNAME =		ownCloud-${V}
PKGNAME =  		owncloudclient-${V}

SHARED_LIBS +=  ownCloudCsync             0.0 # 0.0
SHARED_LIBS +=  ownCloudLibSync           0.0 # 0.0
SHARED_LIBS +=  ownCloudResources         0.0 # 0.0

CATEGORIES =		net

HOMEPAGE =		https://owncloud.com/desktop-app/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL LibreGraphAPI Qt6Concurrent Qt6Core
WANTLIB += Qt6DBus Qt6Gui Qt6Network Qt6OpenGL Qt6Qml Qt6Quick
WANTLIB += Qt6QuickControls2 Qt6QuickWidgets Qt6Widgets Qt6Xml
WANTLIB += c kdsingleapplication-qt6 m qt6keychain sqlite3 z
WANTLIB += lib/inotify/inotify

SITES =	https://download.owncloud.com/desktop/ownCloud/stable/latest/source/ \
	https://download.owncloud.com/desktop/ownCloud/stable/${V}/source/
EXTRACT_SUFX =	.tar.xz

MODULES =		devel/cmake

BUILD_DEPENDS = 	devel/kf6/extra-cmake-modules

RUN_DEPENDS =		devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/gtk+4,-guic

LIB_DEPENDS =		databases/sqlite3 \
			devel/libinotify \
			security/qtkeychain,qt6 \
			www/libre-graph-api \
			x11/kdsingleapplication \
			x11/qt6/qtdeclarative

CONFIGURE_ARGS +=	-Wno-dev \
			-DSYSCONF_INSTALL_DIR=${SYSCONFDIR} \
			-DKDE_INSTALL_PLUGINDIR=${PREFIX}/lib/ownCloud/plugins/ \
			-DCMAKE_DISABLE_FIND_PACKAGE_CMocka=TRUE \
			-DCSYNC_REQUIRED_LIBRARIES=c \
			-DWITH_AUTO_UPDATER=FALSE \
			-DWITH_LIBCLOUDPROVIDERS=FALSE

CFLAGS +=	-I${LOCALBASE}/include -I${LOCALBASE}/include/qtkeychain -I${LOCALBASE}/include/inotify
CXXFLAGS +=	-I${LOCALBASE}/include -I${LOCALBASE}/include/qtkeychain -I${LOCALBASE}/include/inotify
MODCMAKE_LDFLAGS =	-L${LOCALBASE}/lib

NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ownCloud/
	mv ${WRKINST}/etc/ownCloud ${PREFIX}/share/examples/


MODCMAKE_POLICY_VERSION_OVERRIDE = Yes

.include <bsd.port.mk>
