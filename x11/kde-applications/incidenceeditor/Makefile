COMMENT =	KDE PIM incidence editor
DISTNAME =	incidenceeditor-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=	KPim6IncidenceEditor      0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6CalendarCore KF6Codecs KF6ColorScheme
WANTLIB += KF6Completion KF6ConfigCore KF6ConfigGui KF6ConfigWidgets
WANTLIB += KF6Contacts KF6CoreAddons KF6GuiAddons KF6I18n KF6IconThemes
WANTLIB += KF6ItemModels KF6JobWidgets KF6KIOCore KF6KIOGui KF6KIOWidgets
WANTLIB += KF6Service KF6Solid KF6SonnetUi KF6TextAutoCorrectionCore
WANTLIB += KF6TextAutoCorrectionWidgets KF6TextCustomEditor KF6TextTemplate
WANTLIB += KF6TextWidgets KF6WidgetsAddons KF6XmlGui KGantt6 KPim6AkonadiCalendar
WANTLIB += KPim6AkonadiContactCore KPim6AkonadiContactWidgets
WANTLIB += KPim6AkonadiCore KPim6AkonadiMime KPim6AkonadiWidgets
WANTLIB += KPim6CalendarSupport KPim6CalendarUtils KPim6EventViews
WANTLIB += KPim6GrantleeTheme KPim6IMAP KPim6IdentityManagementCore
WANTLIB += KPim6LdapCore KPim6LdapWidgets KPim6Libkdepim KPim6Mime
WANTLIB += KPim6PimCommon KPim6PimCommonAkonadi KPim6TextEdit
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6PrintSupport Qt6Widgets
WANTLIB += Qt6Xml m

MODKDE_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes

BUILD_DEPENDS =	devel/boost

LIB_DEPENDS =	graphics/kdiagram-qt6 \
		devel/kf6/kcalendarcore \
		devel/kf6/kcodecs \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcontacts \
		devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/kio \
		devel/kf6/kitemmodels \
		devel/kf6/kjobwidgets \
		devel/kf6/kservice \
		devel/kf6/ktexttemplate \
		devel/kf6/ktextwidgets \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui \
		devel/kf6/solid \
		devel/kf6/sonnet \
		devel/kf6/kguiaddons \
		textproc/ktextaddons \
		x11/kde-applications/akonadi-calendar>=${VERSION} \
		x11/kde-applications/akonadi-contacts>=${VERSION} \
		x11/kde-applications/akonadi-mime>=${VERSION} \
		x11/kde-applications/akonadi>=${VERSION} \
		x11/kde-applications/calendarsupport>=${VERSION} \
		x11/kde-applications/eventviews>=${VERSION} \
		x11/kde-applications/grantleetheme>=${VERSION} \
		x11/kde-applications/kcalutils>=${VERSION} \
		x11/kde-applications/kidentitymanagement>=${VERSION} \
		x11/kde-applications/kimap>=${VERSION} \
		x11/kde-applications/kldap>=${VERSION} \
		x11/kde-applications/kmime>=${VERSION} \
		x11/kde-applications/kpimtextedit>=${VERSION} \
		x11/kde-applications/libkdepim>=${VERSION} \
		x11/kde-applications/pimcommon>=${VERSION}

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
