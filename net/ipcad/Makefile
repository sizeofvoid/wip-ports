# $RuOBSD: Makefile,v 1.1.1.1 2002/04/08 02:46:36 form Exp $

COMMENT=		IP accounting daemon simulating Cisco ip accounting

DISTNAME=		ipcad-3.7.3
REVISION=		4
CATEGORIES=		net
HOMEPAGE=		https://sourceforge.net/projects/ipcad/

PERMIT_PACKAGE=	Yes

WANTLIB=		c pcap pthread

SITES=			${SITE_SOURCEFORGE:=ipcad/}

CONFIGURE_STYLE=	gnu

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/ipcad ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKBUILD}/ipcad.8 ${PREFIX}/man/man8
	${INSTALL_MAN} ${WRKBUILD}/ipcad.conf.5 ${PREFIX}/man/man5
	perl -pi -e 's:%%SYSCONFDIR%%:${SYSCONFDIR}:' \
		${PREFIX}/man/man5/ipcad.conf.5
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ipcad
	${INSTALL_DATA} ${WRKDIST}/ipcad.conf.default \
		${PREFIX}/share/examples/ipcad/ipcad.conf.default
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ipcad
.for f in AUTHORS BUGS COPYING README
	${INSTALL_DATA} ${WRKDIST}/${f} ${PREFIX}/share/doc/ipcad
.endfor

.include <bsd.port.mk>
