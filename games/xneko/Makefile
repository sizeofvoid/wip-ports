COMMENT=	classic BSD4.4 cat-and-mouse

DISTNAME=	xneko
PKGNAME=	xneko-4.4
REVISION =	3
CATEGORIES=	x11 games
EXTRACT_SUFX=	.tar

# Public domain - written in Japanese
PERMIT_PACKAGE=	Yes
WANTLIB=		X11 c m xcb

FAKE_FLAGS=	MANDIR="${PREFIX}/man/man" BINDIR="${PREFIX}/bin" \
		BINOWN=${BINOWN} BINMODE=${BINMODE}

post-extract:
	rm ${WRKSRC}/obj

.include <bsd.port.mk>
