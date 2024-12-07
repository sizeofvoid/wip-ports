COMMENT =	CommonMark parsing and rendering library and program in C

GH_ACCOUNT =	commonmark
GH_PROJECT =	cmark
GH_TAGNAME =	0.31.1

SHARED_LIBS +=	cmark                     0.2 # 0.29

CATEGORIES =	textproc

MAINTAINER =	Jan Klemkow <j.klemkow@wemelug.de>

HOMEPAGE =	https://commonmark.org/

# BSD2
PERMIT_PACKAGE =	Yes

WANTLIB += c

MODULES =	devel/cmake \
		lang/python

# tests only
MODPY_RUNDEP =		No

CONFIGURE_ARGS =	-DCMARK_SHARED=ON \
			-DCMARK_STATIC=ON

.include <bsd.port.mk>
