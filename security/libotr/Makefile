COMMENT=	portable OTR messaging library and toolkit

DISTNAME=	libotr-4.1.1
CATEGORIES=	security
REVISION=	3

SHARED_LIBS +=  otr                  4.1      # 6.0

HOMEPAGE=	https://otr.cypherpunks.ca/

SITES=		${HOMEPAGE}

MAINTAINER =	Pascal Stumpf <pascal@stumpf.co>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB =  c gcrypt gpg-error iconv intl pthread

LIB_DEPENDS=	security/libgcrypt

# non-shared does not inherit LIB_DEPENDS
LIB_DEPENDS +=	security/libgpg-error

USE_LIBTOOL = 		gnu

CONFIGURE_STYLE=	gnu
# PIE is taken care of on a per-arch basis on OpenBSD, and stack
# protection is enabled anyway.
CONFIGURE_ARGS=		--disable-gcc-hardening \
			--disable-linker-hardening

.include <bsd.port.mk>
