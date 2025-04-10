COMMENT=	decision procedure for bit-vectors and arrays

GH_ACCOUNT=	stp
GH_PROJECT=	stp
GH_TAGNAME=	stp-2.2.0
DISTNAME=	stp-2.2.0
REVISION=	7

SHARED_LIBS +=  stp                       0.0 # 2.2

CATEGORIES=	devel

HOMEPAGE=	https://stp.github.io/

# MIT license
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} boost_program_options-mt c m minisat

COMPILER=	base-clang ports-gcc

MODULES=	devel/cmake \
		lang/python

MODPY_RUNDEP=	No

BUILD_DEPENDS=	devel/bison \
		devel/py-setuptools
LIB_DEPENDS=	devel/boost \
		math/minisat

# force-disable in case cryptominisat is imported.
CONFIGURE_ARGS=	-DNOCRYPTOMINISAT:BOOL=ON

# tests depend on llvm lit
NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/stp
	${INSTALL_DATA} ${WRKSRC}/papers/*.pdf ${PREFIX}/share/doc/stp
	${MODPY_COMPILEALL} ${WRKINST}/${MODPY_SITEPKG}
	find ${PREFIX}/bin -name 'stp*' -ls
	# stp-X.Y.Z ends up as ${FULLPKGNAME} in PLIST
	if [ -L ${PREFIX}/bin/stp ]; then \
	    rm ${PREFIX}/bin/stp; \
	    mv ${PREFIX}/bin/stp-* ${PREFIX}/bin/stp; \
	fi

.include <bsd.port.mk>
