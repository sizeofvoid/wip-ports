COMMENT =	library and tools to access NTFS

VERSION = 	20200805
DISTNAME =	libfsntfs-experimental-${VERSION}
PKGNAME =	${DISTNAME:S/-experimental//}
REVISION =	4

SHARED_LIBS +=  fsntfs                       0.1 # 1.0

CATEGORIES =	sysutils security

HOMEPAGE =	https://github.com/libyal/libfsntfs/wiki

SITES =	https://github.com/libyal/libfsntfs/releases/download/${VERSION}/

MAINTAINER = 	Remi Pointel <rpointel@openbsd.org>

# LGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB =  ${MODPY_WANTLIB}
WANTLIB += bfio c fuse fwnt iconv intl m pthread util

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-python3

WRKDIST =	${WRKDIR}/${PKGNAME}

MODULES +=	lang/python

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/py-setuptools

LIB_DEPENDS +=	devel/libbfio \
		sysutils/libfwnt

TEST_DEPENDS += shells/bash

pre-test:
	sed -i s,#!/bin/bash,#!/${LOCALBASE}/bin/bash, ${WRKSRC}/tests/test_*.sh

.include <bsd.port.mk>
