COMMENT=	C++ wrapper for the Simple DirectMedia Layer

VERSION=	0.1.8
DISTNAME=	SDLmm-${VERSION}
PKGNAME=	sdlmm-${VERSION}
REVISION=	16
CATEGORIES=	devel

SHARED_LIBS +=	SDLmm                9.0      # .8.0

HOMEPAGE=	https://sdlmm.sourceforge.net/

# LGPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB +=	SDL iconv m pthread sndio ${COMPILER_LIBCXX} usbhid

SITES=		${SITE_SOURCEFORGE:=sdlmm/}

COMPILER =	base-clang ports-gcc base-gcc

LIB_DEPENDS=	converters/libiconv \
		devel/sdl

SEPARATE_BUILD= Yes
CONFIGURE_STYLE= gnu

post-install:
	@cd ${WRKSRC}/docs/html && \
	    rm -f Makefile* htmlfiles && \
	    ${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sdlmm && \
	    for A in *; do ${INSTALL_DATA} $$A ${PREFIX}/share/doc/sdlmm/; done

.include <bsd.port.mk>
