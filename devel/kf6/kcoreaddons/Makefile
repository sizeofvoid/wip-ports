COMMENT =	core KDE extensions to Qt classes
DISTNAME =	kcoreaddons-${VERSION}

SHARED_LIBS +=  KF6CoreAddons             1.1 # 0.0

WANTLIB += ${COMPILER_LIBCXX} Qt6Core Qt6DBus Qt6Network Qt6Qml
WANTLIB += m

WANTLIB += lib/inotify/inotify

BUILD_DEPENDS =	misc/shared-mime-info

RUN_DEPENDS =	misc/shared-mime-info \
		sysutils/accountsservice \
		x11/papirus-icon-theme

LIB_DEPENDS =	devel/libinotify \
		x11/qt6/qtdeclarative

# for tests
PORTHOME =		${WRKDIR}
TESTS_IS_INTERACTIVE =	X11

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# gamin is totally unmaintained low quality software
CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_FAM=ON

CONFIGURE_ARGS += \
	-DACCOUNTS_SERVICE_ICON_DIR=${VARBASE}/db/AccountsService/icons

CONFIGURE_ARGS +=	-DBUILD_PYTHON_BINDINGS=OFF

.include <bsd.port.mk>
