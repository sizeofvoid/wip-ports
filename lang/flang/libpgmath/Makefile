# Sync version with lang/flang/flang always!
COMMENT =	LLVM Fortran math library
DISTNAME =	flang-8.0.1.20200707
PKGNAME =	${DISTNAME:S/flang/libpgmath/}
REVISION =	3

SHARED_LIBS +=	pgmath                    4.4 # 8.0

GH_PROJECT =	flang
GH_COMMIT =	9ced08b7e0be4a47f9f711be5591b06f9b1018f3

WANTLIB += ${COMPILER_LIBCXX} m

# Clang on amd64; gcc on aarch64 (XXX: monitor aarch64 situation)
.if ${MACHINE_ARCH:Mamd64}
COMPILER =	base-clang ports-clang
.else
COMPILER =	ports-gcc

# Attempt to prevent libestdc++ and libc++ symbol conflicts in the edge case
# where you're on aarch64 and you are linking together both Fortran and C++
# code into a single object.
MODCMAKE_LDFLAGS =	-static-libstdc++ -static-libgcc
.endif

MODULES =	devel/cmake \
		lang/python

BUILD_DEPENDS =	devel/llvm/19

# If you delete flang, this should go too.
RUN_DEPENDS =	lang/flang/driver

WRKDIST =	${WRKDIR}/flang-${GH_COMMIT}/runtime/libpgmath

.include <bsd.port.mk>
