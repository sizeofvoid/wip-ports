BROKEN-aarch64 = segfault during configure stage

COMMENT =	Perl interface to the swish-e C library

DISTNAME =	swish-e-2.4.7
PKGNAME =	p5-SWISH-API-0.04
REVISION =	7
CATEGORIES =	textproc
MODULES =	cpan

HOMEPAGE =	http://swish-e.org/
SITES =		${HOMEPAGE}distribution/

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB += c m perl z swish-e>=2.1

LIB_DEPENDS =	textproc/swish-e>=2.4.7

WRKSRC =	${WRKDIST}/perl

.include <bsd.port.mk>
