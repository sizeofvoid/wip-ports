BROKEN-alpha=	Alpha architecture not yet supported

COMMENT=	C library to parse CGI Forms

DISTNAME=	cgiparse-0.9b
REVISION=	1
CATEGORIES=	www
SHARED_LIBS=	cgiparse	1.0

HOMEPAGE=	http://resnet.uoregon.edu/~gurney_j/jmpc/cgiparse.html

# License: BSD
PERMIT_PACKAGE=	Yes

SITES=		http://resnet.uoregon.edu/~gurney_j/jmpc/dist/

CONFIGURE_STYLE=	gnu

NO_TEST=	Yes

MAKE_ENV=	LIBcgiparse_VERSION=${LIBcgiparse_VERSION}
FAKE_FLAGS=	MANDIR=${WRKINST}${PREFIX}/man

.include <bsd.port.mk>
