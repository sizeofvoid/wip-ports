COMMENT =	solve algebraic, geometric, combinatorial problems

V =		1.6.13
GH_ACCOUNT =	4ti2
GH_PROJECT =	4ti2
GH_TAGNAME =	Release_${V:S/./_/g}
DISTNAME =	${GH_PROJECT}-${V}

CATEGORIES =	math

HOMEPAGE =	https://4ti2.github.io/

# GPLv2+
PERMIT_PACKAGE =	Yes

SHARED_LIBS +=	4ti2common	0.0 # 0.0
SHARED_LIBS +=	4ti2gmp		0.0 # 0.0
SHARED_LIBS +=	4ti2int32	0.0 # 0.0
SHARED_LIBS +=	4ti2int64	0.0 # 0.0
SHARED_LIBS +=	4ti2util	0.0 # 0.0
SHARED_LIBS +=	zsolve		0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} c glpk gmp gmpxx m

COMPILER =	base-clang ports-gcc

LIB_DEPENDS =		devel/glpk \
			devel/gmp,-cxx

AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.17
USE_GMAKE =		Yes
CONFIGURE_STYLE =	autoreconf
CONFIGURE_ARGS =	--disable-static \
			--enable-shared \
			--with-gmp=${LOCALBASE} \
			--with-glpk=${LOCALBASE}
MAKE_FLAGS =		docdir=${PREFIX}/share/doc/4ti2

TEST_FILES  = check.template.in checkall.in flavorsum.in reportfailures.in
TEST_FILES += subdirsum.in ppi/check-ppi.in

post-extract:
	cd ${WRKSRC}/test && sed -i 's,/bin/bash,/bin/sh', ${TEST_FILES}

.include <bsd.port.mk>
