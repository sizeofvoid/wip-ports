COMMENT=		easily hackable Common LISP window manager

VERSION=		24.11
DISTNAME=		stumpwm-${VERSION}
REVISION=		6

CATEGORIES=		x11

HOMEPAGE=		https://stumpwm.github.io/

MAINTAINER=		Timo Myyra <timo.myyra@bittivirhe.fi>

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += c m pthread util zstd

SITES=		https://github.com/stumpwm/stumpwm/archive/
SITES.a=	https://github.com/edicl/cl-ppcre/archive/
SITES.b=	https://github.com/sharplispers/clx/archive/refs/tags/
SITES.c=	https://beta.quicklisp.org/archive/alexandria/2022-07-07/

DISTFILES=	${DISTNAME}{${VERSION}}${EXTRACT_SUFX}
DISTFILES.a= 	cl-ppcre-2.1.1{v2.1.1}.tar.gz
DISTFILES.b= 	clx-0.7.6{0.7.6}.tar.gz
DISTFILES.c= 	alexandria-20220707-git.tgz

BUILD_DEPENDS=		lang/sbcl \
			print/texinfo
LIB_DEPENDS=		archivers/zstd

AUTOCONF_VERSION=	2.71
CONFIGURE_STYLE=	autoconf no-autoheader
CONFIGURE_ARGS+=	--with-module-dir=${LOCALBASE}/share/stumpwm/modules \
			--enable-compression

USE_GMAKE=		yes
MAKE_ENV=		MAKEINFO=${PREFIX}/bin/gmakeinfo \
			CL_SOURCE_REGISTRY=${WRKSRC} \
			ASDF_OUTPUT_TRANSLATIONS=/:

MAKE_FLAGS=		'-e'

DESTDIRNAME=		destdir
NO_TEST=		yes

# ~/.sbclrc
PORTHOME =		${WRKDIST}

# Use symlinks so ASDF finds system dependencies
pre-configure:
	@find ${WRKDIR} -type f -name \*.asd -a \! -name stumpwm.asd \
		-exec ln -s {} ${WRKSRC} \;

# Warning shouldn't fail the build
pre-build:
	@echo '(declaim (sb-ext:muffle-conditions cl:warning))' \
		> ${WRKDIST}/.sbclrc

.include <bsd.port.mk>
