TOOL=			binutils
TOOL_V=			2.21.1a

REVISION=		3

GNU_TOOL=		Yes

SITES=			${SITE_GNU:=binutils/}

WANTLIB=		c z

CONFIGURE_ARGS+=	--enable-commonbfdlib=no \
			--enable-werror=no

WRKDIST=		${WRKDIR}/${DISTNAME:S/a$//}

NO_TEST=		No

.include <bsd.port.mk>
