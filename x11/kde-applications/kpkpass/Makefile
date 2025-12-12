COMMENT =	KDE PIM Apple wallet file support library
DISTNAME =	kpkpass-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=	KPim6PkPass               0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6Archive Qt6Core Qt6Gui Qt6Network
WANTLIB += Qt6Qml m

MODKDE_TRANSLATIONS = yes

LIB_DEPENDS =	devel/kf6/karchive
RUN_DEPENDS =	misc/shared-mime-info

TEST_IS_INTERACTIVE =	X11

LIB_DEPENDS += x11/qt6/qtdeclarative
.include <bsd.port.mk>
