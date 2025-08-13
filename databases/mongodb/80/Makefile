PORTROACH=	limitw:1,even

V=		8.0.12

# mozjs tag comes from ${WRKSRC}/src/third_party/mozjs/get-sources.sh
MOZJS_TAG=	5acd3be6c9563ad3e7ca6182285c69a38de47bab
DIST_TUPLE=	github mongodb-forks spidermonkey ${MOZJS_TAG} \
		    src/third_party/mozjs/mozilla-release

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += boost_filesystem-mt boost_iostreams-mt boost_log-mt
WANTLIB += boost_program_options-mt boost_system-mt boost_thread-mt
WANTLIB += c crypto curl execinfo icudata icui18n icuuc kvm m
WANTLIB += pcre pcrecpp snappy ssl stemmer yaml-cpp z zstd

BUILD_DEPENDS +=	devel/py-gitpython \
			sysutils/py-distro \
			databases/py-mongo \
			www/py-requests \


MODSCONS_ENV=	PREFIX="${PREFIX}"
MODSCONS_FLAGS=	--allocator=system \
		--cxx-std=20 \
		--disable-warnings-as-errors \
		--libc++ \
		--runtime-hardening=on \
		--ssl \
		--use-system-libunwind \
		--use-system-snappy \
		--use-system-stemmer \
		--use-system-yaml \
		--use-system-zlib \
		--use-system-zstd \
		AR=ar \
		VERBOSE=on

ALL_TARGET=	install-core
LIB_DEPENDS=	archivers/zstd \
		net/curl

CXXFLAGS +=	-Wno-error=deprecated-builtins -Wno-error=unused-variable
CLAGS +=	-DBOOST_NO_CXX98_FUNCTION_BASE

post-extract:
	cd ${WRKSRC}/src/third_party/mozjs; \
	if ! grep -q ^LIB_GIT_REVISION=${MOZJS_TAG}$$ get-sources.sh; then \
		echo "bad MOZJS_TAG; should match `grep ^LIB_GIT_REVISION get-sources.sh`"; \
	fi
	rm -rf ${WRKSRC}/src/third_party/{libstemmer_c,unwind,yaml-cpp,zlib-*,zstandard,snappy-*}
	#cd ${WRKSRC}/src/third_party/mozjs/platform/x86_64/ && cp -R freebsd openbsd

do-install:
.for bin in mongo mongod mongos
	${INSTALL_PROGRAM} ${WRKSRC}/build/opt/mongo/${bin} ${PREFIX}/bin
	if [ -f ${WRKSRC}/debian/${bin}.1 ]; then \
	  ${INSTALL_MAN} ${WRKSRC}/debian/${bin}.1 ${PREFIX}/man/man1; \
	fi
.endfor
	${INSTALL_MAN} ${WRKSRC}/debian/mongodb-parameters.5 ${PREFIX}/man/man5

do-test:
	@${SETENV} ${MAKE_ENV} ${MODSCONS_BIN} -C ${WRKSRC} \
	    ${MODSCONS_ENV} ${MODSCONS_FLAGS} install-unittests
	cd ${WRKSRC} && ${MODPY_BIN} buildscripts/resmoke.py run \
	    --suites=unittests

.include <bsd.port.mk>
