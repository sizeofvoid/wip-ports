COMMENT =	Hiera backend for decrypting encrypted yaml properties

DISTNAME =	hiera-eyaml-4.2.0
CATEGORIES =	databases

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS = 		devel/ruby-highline,${MODRUBY_FLAVOR}>=2.1,<4 \
			devel/ruby-optimist,${MODRUBY_FLAVOR}>=3.1,<4

.include <bsd.port.mk>
