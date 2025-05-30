USE_WXNEEDED =	Yes

COMMENT =	utilities and tools to manage themes in KDE PIM applications
DISTNAME =	grantlee-editor-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  grantleethemeeditor       1.0 # 5.13.2

WANTLIB += ${COMPILER_LIBCXX} GL KF6Archive KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6Contacts
WANTLIB += KF6CoreAddons KF6Crash KF6DBusAddons KF6GuiAddons KF6I18n
WANTLIB += KF6ItemModels KF6JobWidgets KF6KIOCore KF6KIOGui KF6KIOWidgets
WANTLIB += KF6Service KF6Solid KF6SyntaxHighlighting KF6TextAutoCorrectionCore
WANTLIB += KF6TextAutoCorrectionWidgets KF6TextCustomEditor KF6TextTemplate
WANTLIB += KF6WidgetsAddons KF6XmlGui KPim6AkonadiContactCore
WANTLIB += KPim6AkonadiContactWidgets KPim6AkonadiCore KPim6AkonadiMime
WANTLIB += KPim6GrantleeTheme KPim6Libkleo KPim6MessageCore KPim6MessageViewer
WANTLIB += KPim6Mime KPim6MimeTreeParser KPim6PimCommon Qt6Core
WANTLIB += Qt6DBus Qt6Gui Qt6Network Qt6OpenGL Qt6Positioning
WANTLIB += Qt6PrintSupport Qt6Qml Qt6QmlMeta Qt6QmlModels Qt6QmlWorkerScript
WANTLIB += Qt6Quick Qt6WebChannel Qt6WebEngineCore Qt6WebEngineWidgets
WANTLIB += Qt6Widgets Qt6Xml assuan c gpgme gpgmepp m qgpgmeqt6

MODKDE_TRANSLATIONS = yes
MODKDE_DESKTOP_FILE = yes

MODKF5_L10N_CONFLICT = yes
MODKF5_I18N_CONFLICT = yes

BUILD_DEPENDS =	devel/boost \
		devel/kf6/ktexteditor

RUN_DEPENDS =	x11/kde-applications/kdepim-runtime>=${VERSION}

LIB_DEPENDS =	devel/kf6/karchive \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcontacts \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kdbusaddons \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kitemmodels \
		devel/kf6/kjobwidgets \
		devel/kf6/kservice \
		devel/kf6/ktexttemplate \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui \
		devel/kf6/solid \
		devel/kf6/kguiaddons \
		devel/kf6/syntax-highlighting \
		security/gpgme,-qt \
		security/libassuan \
		textproc/ktextaddons \
		x11/kde-applications/akonadi-contacts>=${VERSION} \
		x11/kde-applications/akonadi-mime>=${VERSION} \
		x11/kde-applications/akonadi>=${VERSION} \
		x11/kde-applications/grantleetheme>=${VERSION} \
		x11/kde-applications/kmime>=${VERSION} \
		x11/kde-applications/libkleo>=${VERSION} \
		x11/kde-applications/messagelib>=${VERSION} \
		x11/kde-applications/pimcommon>=${VERSION} \
		x11/qt6/qtdeclarative \
		x11/qt6/qtpositioning \
		x11/qt6/qtwebchannel \
		x11/qt6/qtwebengine

.include <bsd.port.mk>
