COMMENT =	coturn STUN/TURN server

V =		4.5.2
DISTNAME =	turnserver-${V}
REVISION =	4

CATEGORIES =	telephony

HOMEPAGE =	https://github.com/coturn/coturn

MAINTAINER =		Ingo Feinerer <feinerer@logic.at>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c crypto event_core event_extra event_openssl event_pthreads
WANTLIB += hiredis intl mariadb pq pthread sqlite3 ssl m z

PORTROACH =		site:https://github.com/coturn/coturn/releases/
SITES =			https://coturn.net/turnserver/v${V}/

LIB_DEPENDS =		databases/mariadb \
			databases/postgresql \
			databases/sqlite3 \
			devel/gettext,-runtime \
			devel/libevent2 \
			databases/libhiredis

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--localstatedir='${LOCALSTATEDIR}'
# There is no port for MongoDB development libraries and/or headers
CONFIGURE_ENV =		TURN_NO_MONGO=1 \
			TURN_NO_PROMETHEUS=1 \
			TURN_NO_SYSTEMD=1
# Don't pick up devel/pkgconf
CONFIGURE_ENV +=	PKGCONFIG="pkg-config"

post-install:
	rm -rf ${PREFIX}/etc
	mv ${WRKINST}${LOCALSTATEDIR}/db/turndb \
		${PREFIX}/share/examples/turnserver

.include <bsd.port.mk>
