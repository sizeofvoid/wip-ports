COMMENT-main=	perl bindings for Xapian
COMMENT-python=	python bindings for Xapian
COMMENT-ruby=	ruby bindings for Xapian

V=		1.4.29
DISTNAME=	xapian-bindings-${V}

PKGNAME-main=	xapian-bindings-perl-${V}
PKGNAME-python=	xapian-bindings-python-${V}
PKGNAME-ruby=	ruby${MODRUBY_BINREV}-xapian-${V}

CATEGORIES=	databases textproc

HOMEPAGE=	https://xapian.org/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} m z xapian
WANTLIB-main = ${WANTLIB} c perl

SITES=		https://oligarchy.co.uk/xapian/${V}/
EXTRACT_SUFX=	.tar.xz

# -std=gnu++11
COMPILER=	base-clang ports-gcc

# base libtool doesn't support -shrext
USE_LIBTOOL=	gnu

LIB_DEPENDS=	databases/xapian-core

BUILD_DEPENDS=	textproc/py-sphinx

MODULES=	lang/python \
		lang/ruby

MULTI_PACKAGES=	-main -python -ruby

MODRUBY_RUNDEP=	No
MODPY_RUNDEP=	No

RUN_DEPENDS-python=	${MODPY_RUN_DEPENDS}
RUN_DEPENDS-ruby=	${MODRUBY_RUN_DEPENDS}
SUBST_VARS+=		MODRUBY_BINREV

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		RUBY="${RUBY}" RDOC="${RUBY:S/ruby/rdoc/}"
CONFIGURE_ARGS=		--with-perl \
			--with-python3 \
			--with-ruby \
			--without-php \
			--without-tcl \
			--without-csharp \
			--without-java \
			--without-lua

pre-configure:
	sed -i 's/\(rb_funcall(.*, 0\), NULL);/\1);/' \
		${WRKSRC}/ruby/xapian_wrap.cc

post-install:
	mv ${PREFIX}/share/doc/xapian-bindings/ruby{,${MODRUBY_BINREV}}

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mclang}
CONFIGURE_ENV +=	CXXFLAGS="${CXXFLAGS} -fdeclspec"
.endif

.include <bsd.port.mk>
