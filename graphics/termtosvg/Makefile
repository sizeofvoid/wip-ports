# $OpenBSD: Makefile,v 1.13 2021/02/23 19:39:26 sthen Exp $

COMMENT =	record terminal sessions as SVG animations

MODPY_EGG_VERSION = 1.1.0
DISTNAME =	termtosvg-${MODPY_EGG_VERSION}
REVISION =	2

CATEGORIES =	graphics

HOMEPAGE =	https://nbedos.github.io/termtosvg/

# BSD
PERMIT_PACKAGE = Yes

MODULES =	lang/python

MODPY_PI =	Yes
MODPY_SETUPTOOLS = 	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	termtosvg/tests

RUN_DEPENDS =	devel/py-pyte${MODPY_FLAVOR} \
		devel/py-wcwidth${MODPY_FLAVOR} \
		textproc/py-lxml${MODPY_FLAVOR}

.include <bsd.port.mk>
