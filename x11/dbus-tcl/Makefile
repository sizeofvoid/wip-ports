COMMENT =	dbus bindings for Tcl

V =		4.1

DISTNAME =	dbus-${V}
PKGNAME =	dbus-tcl-${V}
CATEGORIES =	x11
HOMEPAGE =	https://chiselapp.com/user/schelte/repository/dbus/
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>

# ISC
PERMIT_PACKAGE =Yes

WANTLIB =	dbus-1
SITES =		${HOMEPAGE:=uv/}
MODULES =	lang/tcl
MODTCL_VERSION =8.6

BUILD_DEPENDS =	${MODTCL_BUILD_DEPENDS} \
		devel/tcllib

LIB_DEPENDS =	x11/dbus
RUN_DEPENDS =	${MODTCL_RUN_DEPENDS}

FAKE_FLAGS =	INSTALL_PROGRAM='$${INSTALL_DATA}' \
		PACKAGE_NAME=dbus-tcl \
		PACKAGE_TARNAME=dbus-tcl \
		pkglibdir='$$(libdir)/tcl/$$(PACKAGE_NAME)'

TEST_FLAGS =	TCLSH_PROG='${LOCALBASE}/bin/dbus-run-session ${MODTCL_BIN}'

SEPARATE_BUILD =Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ARGS+=--with-tcl=${MODTCL_LIBDIR} \
		--mandir='$${prefix}/man'

WRKDIST =	${WRKDIR}/dbus-${V}
TEST_TARGET =	test
SUBST_VARS =	VER

VER =		${V:S/.//g}

# Skip tests that need a system bus, which might not be present.
TEST_FLAGS +=	TESTFLAGS='-skip alias-1.[67]'

pre-configure:
	@${MODTCL_TCLSH_ADJ} ${WRKSRC}/demos/{dbusmon,qdbus}.tcl

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/dbus-tcl
	${INSTALL_SCRIPT} ${WRKSRC}/demos/{dbusmon,qdbus}.tcl \
		${PREFIX}/share/examples/dbus-tcl

.include <bsd.port.mk>
