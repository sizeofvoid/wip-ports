# keep in sync with www/mozilla/mozilla.port.mk
ONLY_FOR_ARCHS =	amd64 aarch64

PKG_ARCH =	*

FV =		140.1.0esr
V =		${FV:C/b.$//}
NAME =		thunderbird-i18n

CATEGORIES =	mail

HOMEPAGE =	https://wiki.mozilla.org/L10n:Home_Page

MAINTAINER =	Landry Breuil <landry@openbsd.org>

# Mozilla public license
PERMIT_PACKAGE =	Yes

SITES =		https://ftp.mozilla.org/pub/thunderbird/releases/${FV}/linux-x86_64/xpi/ \
		http://releases.mozilla.org/pub/thunderbird/releases/${FV}/linux-x86_64/xpi/

LANGUAGES =	af ar ast be bg br ca cak cs cy da de dsb el en-CA en-GB en-US es-AR es-ES es-MX et eu \
		fi fr fy-NL ga-IE gd gl he hr hsb hu hy-AM id is it ja ka kab kk ko lt lv ms nb-NO nl nn-NO \
		pa-IN pl pt-BR pt-PT rm ro ru sk sl sq sr sv-SE th tr uk uz vi \
		zh-CN zh-TW

BUILD_DEPENDS =	archivers/unzip
RUN_DEPENDS =	thunderbird->=${FV:S/b/beta/:S/esr//}:mail/mozilla-thunderbird

DIST_SUBDIR =	mozilla/${NAME}-${FV}
NO_BUILD =	Yes
NO_TEST =	Yes
EXTRACT_ONLY =

.for i in ${LANGUAGES}
SUPDISTFILES +=	$i.xpi
.endfor

PKGNAME =	${NAME}-$L-${FV:S/b/beta/:S/esr//}
COMMENT =	$L language pack for Thunderbird
DISTFILES =	$L.xpi

# use the same for all subpackages
PKGDIR =	${.CURDIR}/../pkg
PLIST =		${PKGDIR}/PLIST
DESCR =		${PKGDIR}/DESCR
CHECKSUM_FILE =	${.CURDIR}/../distinfo
MESSAGE=	${PKGDIR}/MESSAGE
SUBST_VARS =	V L

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/thunderbird/distribution/extensions
	${INSTALL_DATA} ${FULLDISTDIR}/$L.xpi ${PREFIX}/lib/thunderbird/distribution/extensions/langpack-$L@thunderbird.mozilla.org.xpi
