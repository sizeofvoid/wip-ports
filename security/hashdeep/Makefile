COMMENT =		tools to compute hashes recursively

GH_ACCOUNT =		jessek
GH_PROJECT =		hashdeep
GH_TAGNAME =		v4.4
REVISION =		2

CATEGORIES =		security

# Public domain, and the code for Tiger is GPLv2.
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m

# C++11 nullptr
COMPILER = base-clang ports-gcc

USE_GMAKE =		Yes
CONFIGURE_STYLE =	autoreconf

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

NO_TEST =		Yes

CXXFLAGS =		-std=c++11

.include <bsd.port.mk>
