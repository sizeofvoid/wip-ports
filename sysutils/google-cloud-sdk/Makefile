COMMENT=		manage resources on Google Cloud Platform

V=			531.0.0
DISTNAME=		google-cloud-sdk-${V}-linux-x86
PKGNAME=		google-cloud-sdk-${V}
WRKDIST=		${WRKDIR}/google-cloud-sdk

CATEGORIES=		sysutils

HOMEPAGE=		https://cloud.google.com/sdk/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE=		Yes

SITES=			https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/

MODULES=		lang/python

MODPY_BUILDDEP=		Yes

MODPY_ADJ_FILES=	bin/dev_appserver.py \
			bin/bootstrapping/install.py \
			bin/bootstrapping/gsutil.py \
			bin/bootstrapping/bq.py

UPDATE_PLIST_ARGS=	-i MODPY_VERSION

NO_BUILD=		Yes
NO_TEST=		Yes

RUN_DEPENDS=		devel/git

do-install:
	cp -a ${WRKSRC} ${PREFIX}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/google-cloud-sdk

	find ${PREFIX} -type f \( -name '*.bat' -or -name '*.orig' \) \
		-exec rm '{}' \+

# enforce python3 dependency
	find ${PREFIX} -type d -name python2 -exec rm -rf '{}' \+

# XXX ||true: ignore error due to some old python2 syntax still around (unused)
	${MODPY_COMPILEALL} ${PREFIX}/google-cloud-sdk/{lib,platform} || true

	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/google-cloud-sdk
	chown -R ${BINOWN}:${BINGRP} ${PREFIX}/google-cloud-sdk/bin
	chown -R ${MANOWN}:${MANGRP} ${PREFIX}/man1

.for _bin in bq gcloud git-credential-gcloud.sh gsutil
	ln -s ${TRUEPREFIX}/google-cloud-sdk/bin/${_bin} \
		${PREFIX}/bin/${_bin}
.endfor

.include <bsd.port.mk>
