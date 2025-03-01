# regular file usage for bytecode:
# PLIST               -- bytecode base files
# PFRAG.foo           -- bytecode files for FLAVOR == foo
# PFRAG.no-foo        -- bytecode files for FLAVOR != foo
# extended file usage for nativecode:
# PFRAG.native        -- nativecode base files
# PFRAG.foo-native    -- nativecode files for FLAVOR == foo
# PFRAG.no-foo-native -- nativecode files for FLAVOR != foo

.include <bsd.port.arch.mk>

.if ${PROPERTIES:Mocaml_native}
MODOCAML_NATIVE=Yes
# include nativecode base files
PKG_ARGS+=	-Dnative=1
USE_NOBTCFI=	Yes
.else
MODOCAML_NATIVE=No
# remove native base file entry from PLIST
PKG_ARGS+=-Dnative=0
.endif

.if ${PROPERTIES:Mocaml_native_dynlink}
MODOCAML_NATDYNLINK=Yes
MODOCAML_OCAMLDOC?=ocamldoc.opt
# include native dynlink base files
PKG_ARGS+=-Ddynlink=1
.else
MODOCAML_NATDYNLINK=No
MODOCAML_OCAMLDOC?=ocamldoc
# remove native dynlink base file entry from PLIST
PKG_ARGS+=-Ddynlink=0
.endif

# Assume that we want to automatically add ocaml to BUILD_DEPENDS.
BUILD_DEPENDS +=	lang/ocaml
# Assume that we want to automatically add ocaml to RUN_DEPENDS.
# Can take three values:
# Yes, No or if-not-native (translates to Yes if native-code is unsupported)
MODOCAML_RUNDEP?=	Yes

.if ${MODOCAML_RUNDEP:L} == if-not-native && ${MODOCAML_NATIVE} == No
MODOCAML_RUNDEP =	Yes
.endif
.if ${MODOCAML_RUNDEP:L} == yes
RUN_DEPENDS+=		lang/ocaml
.endif

MAKE_ENV +=		OCAMLFIND_DESTDIR=${DESTDIR}${TRUEPREFIX}/lib/ocaml \
			OCAMLFIND_COMMANDS="ocamldoc=${MODOCAML_OCAMLDOC}"

MODOCAML_pre-fake = \
	${INSTALL_DATA_DIR} ${WRKINST}${LOCALBASE}/lib/ocaml/stublibs
