COMMENT =	web application framework for writing scalable web APIs in C

DISTNAME =	kore-4.2.3
REVISION =	5

CATEGORIES =	www

HOMEPAGE =	https://kore.io/

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB +=	c crypto pthread ssl

SITES =		https://kore.io/releases/

FLAVORS =	acme curl debug pgsql python
FLAVOR ?=

.if ${FLAVOR} == "acme"
MAKE_ENV +=	ACME=1
WANTLIB +=	curl
LIB_DEPENDS +=	net/curl
.endif

.if ${FLAVOR} == "curl"
MAKE_ENV +=	CURL=1
WANTLIB +=	curl
LIB_DEPENDS +=	net/curl
.endif

.if ${FLAVOR} == "debug"
MAKE_ENV +=	DEBUG=1
.endif

.if ${FLAVOR} == "pgsql"
MAKE_ENV +=	PGSQL=1
WANTLIB +=	pq
LIB_DEPENDS +=	databases/postgresql,-main
.endif

.if ${FLAVOR} == "python"
CONFIGURE_STYLE = none
MODULES =	lang/python
MAKE_ENV +=	PYTHON=1
WANTLIB +=	${MODPY_WANTLIB} intl m util
LIB_DEPENDS +=	devel/gettext,-runtime
.endif

USE_GMAKE =	Yes

MAKE_ENV +=	CC="${CC}" TASKS=1

FAKE_FLAGS =	DESTDIR=

NO_TEST =	Yes

post-configure:
	${SUBST_CMD} ${WRKSRC}/misc/python3-config.sh

post-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} tools-build

post-install:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} tools-install
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/kore
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/kore
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/kore
	${INSTALL_DATA} ${WRKSRC}/conf/kore.conf.example ${PREFIX}/share/examples/kore

.include <bsd.port.mk>
