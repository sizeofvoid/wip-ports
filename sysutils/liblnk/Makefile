COMMENT =	library and tools to access the Windows Shortcut File

VERSION = 	20191221
DISTNAME =	liblnk-alpha-${VERSION}
PKGNAME =	${DISTNAME:S/-alpha//}
REVISION =	5

SHARED_LIBS +=  lnk                       0.1 # 1.0

CATEGORIES =	sysutils security

HOMEPAGE =	https://github.com/libyal/liblnk/wiki

SITES =		https://github.com/libyal/liblnk/releases/download/${VERSION}/

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# LGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += bfio c fwsi iconv intl m pthread util ${MODPY_WANTLIB}

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-python3

WRKDIST =	${WRKDIR}/${PKGNAME}

MODULES +=	lang/python

BUILD_DEPENDS +=devel/gettext,-tools \
		devel/py-setuptools

LIB_DEPENDS +=	devel/gettext,-runtime \
		devel/libbfio \
		sysutils/libfwsi

TEST_DEPENDS +=	shells/bash

pre-test:
	sed -i s,#!/bin/bash,#!/${LOCALBASE}/bin/bash, ${WRKSRC}/tests/test_*.sh

.include <bsd.port.mk>
