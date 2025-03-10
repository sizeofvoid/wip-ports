# keep in sync with list from cad/kicad/Makefile
BROKEN-powerpc =	segfaults when trying to run the PCB editor
BROKEN =		Needs _LIBCXXABI_FORGIVING_DYNAMIC_CAST in base libcxxabi

NOT_FOR_ARCHS =		powerpc

PKG_ARCH ?=		*

V ?=			8.0.9
EXTRACT_SUFX ?=		.tar.bz2

DISTNAME=		kicad-${KICAD_PROJECT}-$V

CATEGORIES ?=		cad

HOMEPAGE ?=		https://kicad.github.io/${KICAD_PROJECT:L}/

SITES ?=	\
	https://gitlab.com/kicad/libraries/kicad-${KICAD_PROJECT}/-/archive/$V/

# CC-BY-SA 4.0
PERMIT_PACKAGE ?=	Yes

MODULES ?=		devel/cmake

NO_TEST =		Yes
