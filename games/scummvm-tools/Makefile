COMMENT=	collection of various tools for scummvm
V=		2.9.0
DISTNAME=	scummvm-tools-${V}

CATEGORIES=	games
SITES=		https://downloads.scummvm.org/frs/scummvm-tools/${V}/

HOMEPAGE=	https://www.scummvm.org/

MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} FLAC c freetype iconv m mad ogg
WANTLIB += png vorbis vorbisenc vorbisfile wx_baseu-3.2 wx_baseu_net-3.2
WANTLIB += wx_baseu_xml-3.2 wx_gtk3u_core-3.2 wx_gtk3u_html-3.2
WANTLIB += wx_gtk3u_qa-3.2 wx_gtk3u_xrc-3.2 z

NO_TEST=	Yes
USE_GMAKE=	Yes

# extract_prince uses C++11 std::to_string
COMPILER=	base-clang ports-gcc

LIB_DEPENDS=	audio/flac \
		graphics/png \
		audio/libvorbis \
		audio/libmad \
		x11/wxWidgets

RUN_DEPENDS=	audio/lame \
		audio/vorbis-tools

CONFIGURE_STYLE=simple
CONFIGURE_ARGS+=--disable-boost
CONFIGURE_ENV+= CPPFLAGS="-I${LOCALBASE}/include" \
                LDFLAGS="-L${LOCALBASE}/lib"
MAKE_ENV=	CXXFLAGS="${CXXFLAGS}" CXX="${CXX}" VERBOSE_BUILD=1

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/scummvm-tools
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/scummvm-tools	
	${INSTALL_DATA_DIR} ${PREFIX}/share/scummvm-tools
	${INSTALL_DATA} ${WRKSRC}/gui/media/{logo.jpg,detaillogo.jpg,tile.gif} \
	    ${PREFIX}/share/scummvm-tools	
	${INSTALL_PROGRAM} \
		${WRKBUILD}/scummvm-tools \
		${WRKBUILD}/scummvm-tools-cli \
		${WRKBUILD}/de{cine,gob,kyra,prince,scumm,sword2,twine} \
		${WRKBUILD}/extract_{gob_cdi,mohawk,ngi,hadesch,lokalizator} \
		${WRKBUILD}/construct_mohawk \
		${WRKBUILD}/msn_convert_mod \
		${WRKBUILD}/gob_loadcalc \
		${WRKBUILD}/create_sjisfnt \
		${PREFIX}/bin

.include <bsd.port.mk>
