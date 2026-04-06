COMMENT =	Varlink C implementation and code generator

V =		0.1.1
COMMIT =	bd4b709430eef9a1252198f9a0ea4a05930eda26
DIST_TUPLE =	fdo emersion vali v${V} .
SHARED_LIBS +=  vali	0.0 # 0.0

CATEGORIES =	devel

# MIT
PERMIT_PACKAGE = Yes

WANTLIB =	aml json-c c

COMPILER =      base-clang ports-gcc
COMPILER_LANGS = c

MODULES =       devel/meson

LIB_DEPENDS =	devel/aml \
		devel/json-c

WRKDIST =       ${WRKDIR}/vali-v${V}-${COMMIT}

.include <bsd.port.mk>
