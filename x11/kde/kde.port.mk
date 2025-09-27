MODKDE_GEAR_VERSION ?=		25.08.1
MODKDE_PLASMA_VERSION ?=	6.4.5

MODKDE_KF5 ?=			No

.if empty(CONFIGURE_STYLE)
CONFIGURE_STYLE =      cmake
.endif

.if defined(MODKDE_KF5) && ${MODKDE_KF5:L} == "yes"
MODULES +=		devel/kf5
.else
CONFIGURE_ARGS +=	-DBUILD_WITH_QT6=ON
MODULES +=		devel/kf6
.endif

# Set to 'yes' if there are .desktop files under share/release-service/.
.if defined(MODKDE_DESKTOP_FILE) && ${MODKDE_DESKTOP_FILE:L} == "yes"
MODKDE_RUN_DEPENDS +=		devel/desktop-file-utils
.endif

# Set to 'yes' if there are icon files under share/icons/.
.if defined(MODKDE_ICON_CACHE) && ${MODKDE_ICON_CACHE:L} == "yes"
MODKDE_RUN_DEPENDS +=		x11/gtk+4,-guic
.endif

# Set to 'yes' if there are icon files under share/locale/.
.if defined(MODKDE_TRANSLATIONS) && ${MODKDE_TRANSLATIONS:L} == "yes"
MODKDE_BUILD_DEPENDS +=		devel/gettext,-tools
.endif

# Set to 'yes' if there are icon files under share/doc/.
.if defined(MODKDE_DOCS) && ${MODKDE_DOCS:L} == "yes"
.if ${MODKDE_KF5:L} == "yes"
MODKDE_BUILD_DEPENDS +=		devel/kf5/kdoctools
MODKDE_RUN_DEPENDS +=		devel/kf5/kdoctools
.else
MODKDE_BUILD_DEPENDS +=		devel/kf6/kdoctools
MODKDE_RUN_DEPENDS +=		devel/kf6/kdoctools
.endif
.endif
