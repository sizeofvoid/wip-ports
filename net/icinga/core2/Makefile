COMMENT-main =	network monitoring system
COMMENT-mysql =	MySQL support for icinga2
COMMENT-pgsql =	PostgreSQL support for icinga2

V =		2.15.0
REVISION-main =	0

GH_PROJECT =	icinga2
GH_TAGNAME =	v$V
PKGNAME-main =	icinga2-$V
PKGNAME-mysql =	icinga2-ido-mysql-$V
PKGNAME-pgsql =	icinga2-ido-pgsql-$V
DPB_PROPERTIES =parallel

EPOCH =		0

SHARED_LIBS +=	base                      0.0 # 2.6
SHARED_LIBS +=	checker                   0.0 # 2.6
SHARED_LIBS +=	cli                       0.0 # 2.6
SHARED_LIBS +=	compat                    0.0 # 2.6
SHARED_LIBS +=	config                    0.0 # 2.6
SHARED_LIBS +=	db_ido                    0.0 # 2.6
SHARED_LIBS +=	db_ido_mysql              0.0 # 2.6
SHARED_LIBS +=	db_ido_pgsql              0.0 # 2.6
SHARED_LIBS +=	execvpe                   0.0 # 2.6
SHARED_LIBS +=	icinga                    0.0 # 2.6
SHARED_LIBS +=	livestatus                0.0 # 2.6
SHARED_LIBS +=	methods                   0.0 # 2.6
SHARED_LIBS +=	mmatch                    0.0 # 2.6
SHARED_LIBS +=	mysql_shim                0.0 # 2.9
SHARED_LIBS +=	notification              0.0 # 2.6
SHARED_LIBS +=	perfdata                  0.0 # 2.6
SHARED_LIBS +=	pgsql_shim                0.0 # 2.9
SHARED_LIBS +=	remote                    0.0 # 2.6
SHARED_LIBS +=	socketpair                0.0 # 2.6

# GPLv2+ with OpenSSL exemption
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} boost_atomic-mt boost_context-mt
WANTLIB += boost_coroutine-mt boost_date_time-mt boost_filesystem-mt
WANTLIB += boost_iostreams-mt boost_program_options-mt boost_random-mt
WANTLIB += boost_regex-mt boost_system-mt boost_thread-mt c curses
WANTLIB += edit execinfo m crypto ssl

MODULES =		devel/cmake

COMPILER =		base-clang ports-gcc

BUILD_DEPENDS =		devel/bison

MULTI_PACKAGES =	-main -mysql -pgsql
DEBUG_PACKAGES =	${BUILD_PACKAGES}
PSEUDO_FLAVORS =	no_mysql no_pgsql
FLAVOR ?=

LIB_DEPENDS-main +=	${LIB_DEPENDS} \
			devel/boost,-md
RUN_DEPENDS-main =	net/monitoring-plugins

RUN_DEPENDS =		${BASE_PKGPATH},-main=${FULLPKGNAME-main:S/icinga2-//}

WANTLIB-mysql +=	${COMPILER_LIBCXX} m mariadb
LIB_DEPENDS-mysql =	${LIB_DEPENDS} \
			databases/mariadb

WANTLIB-pgsql +=	${COMPILER_LIBCXX} m pq
LIB_DEPENDS-pgsql =	${LIB_DEPENDS} \
			databases/postgresql

CONFIGURE_ARGS += \
	-DBASHCOMPLETION_DIR=${PREFIX}/share/examples/icinga2/bash_completion.d \
	-DCMAKE_INSTALL_MANDIR=${PREFIX}/man \
	-DCMAKE_INSTALL_LOCALSTATEDIR=${LOCALSTATEDIR} \
	-DCMAKE_INSTALL_SYSCONFDIR=${PREFIX}/share/examples \
	-DICINGA2_UNITY_BUILD=OFF \
	-DICINGA2_CONFIGDIR=${SYSCONFDIR}/icinga2 \
	-DICINGA2_USER=_icinga \
	-DICINGA2_GROUP=_icinga \
	-DICINGA2_GIT_VERSION_INFO=OFF \
	-DICINGA2_PLUGINDIR=${LOCALBASE}/libexec/nagios
CONFIGURE_ENV +=	LDFLAGS="${LDFLAGS}"

# "undefined reference to `__atomic_fetch_sub_8'"
.if ${MACHINE_ARCH:Mhppa}
WANTLIB +=		atomic
LDFLAGS +=		-latomic
.endif

.include <bsd.port.arch.mk>
.if !${BUILD_PACKAGES:M-mysql}
CONFIGURE_ARGS += -DICINGA2_WITH_MYSQL=OFF
.endif
.if !${BUILD_PACKAGES:M-pgsql}
CONFIGURE_ARGS += -DICINGA2_WITH_PGSQL=OFF
.endif

post-install:
	mv ${WRKINST}${SYSCONFDIR}/icinga2/features-available/* \
	    ${PREFIX}/share/examples/icinga2/features-available/
	rmdir ${WRKINST}${SYSCONFDIR}/icinga2/features-available
	mv ${WRKINST}${SYSCONFDIR}/icinga2/* ${PREFIX}/share/examples/icinga2/
	rmdir ${WRKINST}${LOCALSTATEDIR}/run/icinga2{/cmd,}
	${INSTALL_DATA_DIR} ${PREFIX}/share/nano
	${INSTALL_DATA} ${WRKSRC}/tools/syntax/nano/*nanorc ${PREFIX}/share/nano
.for i in ftdetect syntax
	${INSTALL_DATA_DIR} ${PREFIX}/share/vim/vimfiles/$i
	${INSTALL_DATA} ${WRKSRC}/tools/syntax/vim/$i/* ${PREFIX}/share/vim/vimfiles/$i
.endfor
	sed -i "s,/usr/share/icinga2,${TRUEPREFIX}/share/icinga2,g" \
		${PREFIX}/share/doc/icinga2/markdown/*.md

.include <bsd.port.mk>
