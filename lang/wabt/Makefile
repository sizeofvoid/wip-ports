# $OpenBSD: Makefile,v 1.4 2021/05/13 05:00:36 semarie Exp $

COMMENT =	WebAssembly binary toolkit

DISTNAME =	wabt-${V}
V =		1.0.23

CATEGORIES =	lang

HOMEPAGE =	https://github.com/WebAssembly/wabt/

# Apache 2.0
PERMIT_PACKAGE =	Yes

# use pledge()
WANTLIB = ${COMPILER_LIBCXX} c m

MASTER_SITES =	https://github.com/WebAssembly/wabt/releases/download/${V}/

EXTRACT_SUFX =	.tar.xz

# C++11
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake \
		lang/python

MODPY_RUNDEP =	No

TEST_TARGET =	check

# disable skip-stack-guard-page test: SEGFAULT
pre-test:
	-mv ${WRKSRC}/test/wasm2c/spec/skip-stack-guard-page.txt{,.disable}

.include <bsd.port.mk>
