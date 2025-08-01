VERSION =		3.3.9
DISTNAME =		ruby-${VERSION}
PKGNAME-main =		ruby-${VERSION}
PKGNAME-ri_docs =	ruby${BINREV}-ri_docs-${VERSION}
SHARED_LIBS =		ruby33	0.0
NEXTVER =		3.4
PKGSPEC-main ?=         ruby->=3.3.0,<${NEXTVER}

PSEUDO_FLAVORS=		no_ri_docs bootstrap
# Do not build the RI docs on slow arches
.if ${MACHINE_ARCH:Malpha} || ${MACHINE_ARCH:Marm} || ${MACHINE_ARCH:Mhppa}
FLAVOR?=		no_ri_docs bootstrap
.else
FLAVOR?=
.endif

.if ${MACHINE_ARCH:Mamd64}
# Support YJIT JIT compiler on arches Ruby supports
MODULES +=		lang/rust
WANTLIB-main +=		c++abi
MAKE_ENV +=		LIBRUBY_DLDFLAGS="-lc++abi"
.endif

.if ${MACHINE_ARCH:Maarch64}
# Disable YJIT on arm64 until it is fixed
CONFIGURE_ARGS +=	--disable-yjit
.endif

.if ${MACHINE_ARCH:Mriscv64}
CONFIGURE_ARGS +=	--with-coroutine=riscv64
.endif

MULTI_PACKAGES =	-main -ri_docs
.include <bsd.port.arch.mk>

.if ${BUILD_PACKAGES:M-ri_docs}
ALL_TARGET +=		rdoc
INSTALL_TARGET +=	install-doc
.endif

COMPILER =      base-clang ports-gcc

GEM_EXTENSIONS_DIR = lib/ruby/gems/${REV}/extensions/${MACHINE_ARCH:S/i386/x86/:S/amd64/x86_64/}-openbsd
SUBST_VARS += GEM_EXTENSIONS_DIR

TEST_ENV =	RUBYGEMS_SYSTEM_UPDATE_MESSAGE=enable
TEST_TARGET =	test-all test-spec TESTOPTS="-v -q"

post-extract:
	${POST_EXTRACT}

pre-configure:
	${FIX_RIPPER}
	/usr/bin/touch ${WRKSRC}/ext/ripper/ripper.c

pre-install:
	${PRE_INSTALL}

post-install:
	${FIX_RBCONFIG}
	rm -rf ${PREFIX}/lib/ruby/gems/${REV}/gems/{debug,rbs}-*/ext/
	rm -f ${PREFIX}/bin/*.lock

.include <bsd.port.mk>
