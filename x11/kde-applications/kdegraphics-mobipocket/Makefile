SHARED_LIBS +=	QMobipocket6              0.0 # 0.0
COMMENT =	collection of plugins to handle mobipocket files

DISTNAME =	kdegraphics-mobipocket-${VERSION}
PKGNAME =	kdegraphics-mobipocket-kf5-${VERSION}

CATEGORIES =	devel

SHARED_LIBS +=  qmobipocket               1.0 # 2.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui m

MODKDE_KF5 =	Yes

NO_TEST =	Yes

LIB_DEPENDS += x11/qt6/qtbase
.include <bsd.port.mk>
