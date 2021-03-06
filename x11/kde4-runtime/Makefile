# $FreeBSD$

PORTNAME=	kde-runtime
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
PORTREVISION=	3
CATEGORIES=	x11 kde kde-applications

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Runtime components for KDE Plasma Desktop

LIB_DEPENDS=	libIlmImf.so:graphics/OpenEXR \
		libexiv2.so:graphics/exiv2 \
		libwebp.so:graphics/webp \
		libslp.so:net/openslp \
		libssh.so:security/libssh \
		libqzeitgeist.so:sysutils/qzeitgeist \
		libImath-2_2.so:graphics/ilmbase \
		libassuan.so:security/libassuan \
		libgcrypt.so:security/libgcrypt \
		libgpg-error.so:security/libgpg-error \
		libgpgme.so:security/gpgme
# Explicitly depend on libssh to avoid interference with ssh.4 from
# compat7x.
BUILD_DEPENDS=	${LOCALBASE}/lib/libssh.so:security/libssh
RUN_DEPENDS=	cagibid:net/cagibi

USES=		cmake:outsource gettext gmake jpeg kde:4 samba:lib shared-mime-info \
		shebangfix tar:xz
USE_KDE=	kactivities kdelibs oxygen-icons5 \
		attica automoc4 pimlibs soprano strigi nepomuk-core
USE_QT4=	corelib dbus declarative designer_build gui phonon \
		network qtestlib script svg webkit xml \
		moc_build qmake_build rcc_build uic_build
USE_XORG=	ice sm x11 xau xcursor xext xft xdmcp xpm
USE_LDCONFIG=	yes
MAKE_ENV=	XDG_CONFIG_HOME=/dev/null
SHEBANG_FILES=	khelpcenter/searchhandlers/*.pl \
		khelpcenter/searchhandlers/*.pl.cmake \
		kioslave/info/kde-info2html

OPTIONS_DEFINE=	PULSEAUDIO ZEITGEIST

PULSEAUDIO_DESC=Audio configuration via PulseAudio
PULSEAUDIO_LIB_DEPENDS=	libpulse.so:audio/pulseaudio \
			libcanberra.so:audio/libcanberra
PULSEAUDIO_USE=	GNOME=glib20
PULSEAUDIO_CMAKE_OFF=	-DWITH_PulseAudio:BOOL=OFF

ZEITGEIST_DESC=	Event logging via Zeitgeist
ZEITGEIST_RUN_DEPENDS=	zeitgeist-daemon:sysutils/zeitgeist

# Explicitly disable ALSA, see for details:
# http://mail.kde.org/pipermail/kde-freebsd/2010-March/008015.html
CMAKE_ARGS+=	-DWITH_ALSA:BOOL=OFF

post-extract:
# Don't install share/icons/hicolor/index.theme to avoid conflcit with
# hicolor-icon-theme port
	${REINPLACE_CMD} -e '/add_subdirectory.*hicolor/d' \
		${PATCH_WRKSRC}/pics/CMakeLists.txt

post-patch:
	@${REINPLACE_CMD} -e 's,/usr/local,${LOCALBASE},g' \
		${PATCH_WRKSRC}/khelpcenter/infotree.cpp \
		${PATCH_WRKSRC}/kioslave/info/kde-info2html.conf \
		${PATCH_WRKSRC}/kioslave/man/kio_man.cpp \
		${PATCH_WRKSRC}/kioslave/man/man2html.cpp \
		${PATCH_WRKSRC}/cmake/modules/FindCLucene.cmake
	${REINPLACE_CMD} -e '/update_xdg_mimetypes/ d' \
		${PATCH_WRKSRC}/kimgio/CMakeLists.txt \
		${PATCH_WRKSRC}/kioslave/network/mimetypes/CMakeLists.txt

.include <bsd.port.mk>
