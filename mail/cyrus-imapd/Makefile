PORTROACH=		limitw:1,even

COMMENT=		Cyrus IMAP server

V=			3.10.0
DISTNAME=		cyrus-imapd-${V}

SHARED_LIBS +=  cyrus_min            0.0      # unknown
SHARED_LIBS +=  cyrus                0.0      # unknown
SHARED_LIBS +=  cyrus_imap           0.0      # unknown
SHARED_LIBS +=  cyrus_sieve          0.0      # unknown

CATEGORIES=		mail

HOMEPAGE=		https://www.cyrusimap.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# CMU - see COPYING file in package
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} c com_err crypto execinfo icudata
WANTLIB += icui18n icuuc jansson m pcre2-8 pcre2-posix perl sasl2
WANTLIB += sqlite3 srs2 ssl uuid z

SITES=			https://github.com/cyrusimap/cyrus-imapd/releases/download/cyrus-imapd-${V}/

COMPILER=		base-clang ports-gcc base-gcc
USE_GMAKE=		Yes

# XXX shouldn't be needed because we build with --disable-http
# imap/caldav_alarm.h:51:10: fatal error: 'libical/ical.h' file not found
# #include <libical/ical.h>
BUILD_DEPENDS +=	textproc/libical

LIB_DEPENDS=		databases/sqlite3 \
			devel/jansson \
			devel/pcre2 \
			mail/libsrs2 \
			security/cyrus-sasl2 \
			sysutils/e2fsprogs \
			textproc/icu4c

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=		--bindir=${PREFIX}/cyrus/bin \
			--libexec=${PREFIX}/cyrus/libexec \
			--sbindir=${PREFIX}/cyrus/sbin \
			--with-sasl=${LOCALBASE} \
			--with-cyrus-user=_cyrus \
			--with-syslogfacility=MAIL \
			--without-chardet \
			--without-sphinx-build \
			--without-zeroskip \
			--disable-gssapi \
			--enable-autocreate \
			--enable-idled \
			--enable-murder \
			--enable-srs

# XXX notyet; FLAVOR
CONFIGURE_ARGS +=	--without-clamav \
			--disable-http

DEBUG_PACKAGES=		${BUILD_PACKAGES}

# --mandir is overriden by the ports infrastructure
FAKE_FLAGS=		mandir=${PREFIX}/cyrus/man

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/cyrus-imapd
	cp -R ${WRKSRC}/doc/[!examples]* ${PREFIX}/share/doc/cyrus-imapd
	cp -R ${WRKSRC}/doc/examples/* ${PREFIX}/share/examples/cyrus-imapd
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/cyrus-imapd
	cp -R ${WRKSRC}/tools ${PREFIX}/share/examples/cyrus-imapd/
	${INSTALL_DATA} ${FILESDIR}/imapd.conf \
		${PREFIX}/share/examples/cyrus-imapd/
	rm -r ${PREFIX}/libdata/perl5/${MACHINE_ARCH}-openbsd \
		${PREFIX}/share/doc/cyrus-imapd/text
# cleanup
	rm -r ${PREFIX}/share/doc/cyrus-imapd/html/{_*,.buildinfo}
	find ${PREFIX}/share/{doc,examples}/cyrus-imapd -name '.gitignore' -or \
		-name '*.orig' -exec rm '{}' \+

.include <bsd.port.mk>
