COMMENT =		Cisco implementation of H.264 codec
DIST_TUPLE =		github	cisco	openh264	v2.6.0	.
CATEGORIES =		multimedia

SHARED_LIBS =		openh264	1.0

HOMEPAGE =		https://www.openh264.org/

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# BSD 2-clause
PERMIT_PACKAGE =	Yes

WANTLIB =		${COMPILER_LIBCXX} c m

COMPILER =		base-clang ports-gcc

.if ${MACHINE_ARCH:Mi386} || ${MACHINE_ARCH:Mamd64}
BUILD_DEPENDS +=	devel/nasm
.endif

.if ${MACHINE_ARCH:Mi386}
MAKE_ENV +=		LDFLAGS=-Wl,-z,notext
.endif

TEST_DEPENDS =		devel/gtest

USE_GMAKE =		Yes

# enable architecture specific optimizations, see ${WRKSRC}/build/arch.mk
MAKE_FLAGS +=		ARCH=${MACHINE_ARCH:amd64=x86_64}

# disable unneeded GMP API for now
MAKE_FLAGS +=		HAVE_GMP_API=No

# pass our .so version and ensure full SONAME, see ${WRKSRC}/build-bsd.mk
MAJORVER =		${LIBopenh264_VERSION:R}
MAKE_FLAGS +=		SHAREDLIB_MAJORVERSION=${MAJORVER} \
			SHAREDLIBSUFFIXFULLVER=so.${LIBopenh264_VERSION} \
			SHLDFLAGS=-Wl,-soname,libopenh264.so.${LIBopenh264_VERSION}

# clear upstream "-O3" and "-g" defaults
MAKE_FLAGS +=		CXX='${CXX}' \
			CFLAGS_OPT='' \
			CFLAGS_DEBUG=''

TEST_FLAGS +=		HAVE_GTEST=Yes
# find devel/gtest and remove libgtest.a to avoid its build in
# ${WRKSRC}/build/gtest-targets.mk
TEST_FLAGS +=	CODEC_UNITTEST_INCLUDES='-I${WRKSRC}/test -I/usr/local/include' \
		CODEC_UNITTEST_LDFLAGS_SUFFIX=-L/usr/local/lib \
		CODEC_UNITTEST_DEPS='libdecoder.a libencoder.a libprocessing.a libcommon.a'

post-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/h264{enc,dec} ${PREFIX}/bin/
	rm ${PREFIX}/lib/libopenh264.so{.${MAJORVER},}

.include <bsd.port.mk>
