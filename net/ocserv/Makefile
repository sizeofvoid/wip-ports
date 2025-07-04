COMMENT=	server implementing the AnyConnect SSL VPN protocol

DISTNAME=	ocserv-1.3.0
EXTRACT_SUFX=	.tar.xz
REVISION=	0

CATEGORIES=	net

HOMEPAGE=	https://ocserv.openconnect-vpn.net/

MAINTAINER =	Renaud Allard <renaud@allard.it>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB+=	c curses ev gnutls lz4 m nettle oath pam protobuf-c
WANTLIB+=	radcli readline talloc

SITES=		https://www.infradead.org/ocserv/download/

MODULES=	lang/ruby

BUILD_DEPENDS=	textproc/groff \
		textproc/gsed \
		textproc/ruby-ronn
LIB_DEPENDS=	archivers/lz4 \
		devel/libev \
		devel/libtalloc \
		devel/protobuf-c \
		net/radcli>=1.2.5 \
		security/gnutls \
		security/oath-toolkit \
		security/openpam
TEST_DEPENDS=	net/openconnect \
		shells/bash \
		sysutils/coreutils \
		textproc/gsed

CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS=		--disable-namespaces \
			--without-docker-tests \
			--without-geoip \
			--without-http-parser \
			--without-maxmind \
			--without-nuttcp-tests \
			--without-pcl-lib

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

# autoconf requires this (it's used in tests), but the ipcalc we
# have in ports is not compatible with the one that ocserv wants.
CONFIGURE_ENV+=	IPCALC=false

AUTOCONF_VERSION=	2.71

post-extract:
	find ${WRKSRC}/tests -type f -perm -+x -exec \
	    sed -i 's,#!/bin/bash,#!${LOCALBASE}/bin/bash,' {} +
	sed -i 's,/usr/sbin/openconnect,${LOCALBASE}/sbin/openconnect,' \
	    ${WRKSRC}/tests/common.sh
	sed -i 's,/etc/ocserv,${SYSCONFDIR}/ocserv,' \
	    ${WRKSRC}/doc/ocserv.8.md \
	    ${WRKSRC}/doc/sample.config \
	    ${WRKSRC}/src/ocpasswd/ocpasswd.c
	sed -i 's,/usr/bin/ocserv-fw,${SYSCONFDIR}/ocserv/ocserv-fw,g' \
	    ${WRKSRC}/src/main-user.c \
	    ${WRKSRC}/doc/sample.config

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ocserv
	cd ${WRKSRC}/doc; ${INSTALL_DATA} profile.xml sample.passwd \
	    ${PREFIX}/share/examples/ocserv/
	mv ${PREFIX}/libexec/ocserv-fw ${PREFIX}/share/examples/ocserv/
	${SUBST_CMD} -c -m ${SHAREMODE} -o ${SHAREOWN} -g ${SHAREGRP} \
	    ${WRKSRC}/doc/sample.config \
	    ${PREFIX}/share/examples/ocserv/sample.config
	cd ${WRKSRC}/doc; \
	    gsed -i -e '/@CONFIGFILE@/{r sample.config' -e 'd}' ocserv.8.md; \
	    for i in *.8.md; do ronn${MODRUBY_BINREV} -r $$i; done
	${INSTALL_MAN} ${WRKSRC}/doc/*.8 ${PREFIX}/man/man8/

# XXX server-cert-ed25519, server-cert-rsa-pss, owasp-headers are known to fail.
# These tests use socket_wrapper, which is not in ports.
pre-test:
	ln -fs ${LOCALBASE}/bin/gtimeout ${WRKDIR}/bin/timeout
	ln -fs ${LOCALBASE}/bin/gsed ${WRKDIR}/bin/sed
	sed -i 's#\/bin\/true#\/usr\/bin\/true#g' ${WRKSRC}/tests/test-*

post-test:
	@[ `id -u` == 0 ] || printf \
	 "\n*** NOTE: ocserv has loopback tests which require root ***\n\n"

.include <bsd.port.mk>
