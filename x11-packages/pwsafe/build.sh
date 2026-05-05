TERMUX_PKG_HOMEPAGE=https://www.pwsafe.org/
TERMUX_PKG_DESCRIPTION="Password Safe - Popular secure and convenient password manager"
TERMUX_PKG_LICENSE="Artistic-License-2.0"
TERMUX_PKG_MAINTAINER="@3ls-it"
TERMUX_PKG_VERSION="1.23.0"
TERMUX_PKG_SRCURL="https://github.com/pwsafe/pwsafe/archive/refs/tags/${TERMUX_PKG_VERSION}.tar.gz"
TERMUX_PKG_SHA256=b1380988df34938d636ea67a5839ad23decd2db0338ba82ac5499345be8a347e
TERMUX_PKG_DEPENDS="file, libc++, libcurl, libqrencode, libuuid, libx11, libxtst, wxwidgets, xerces-c"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS=""


termux_step_pre_configure() {
		## --- Diagnostic build (do not ship) still segfaults ---
		CFLAGS+=" -O1 -g -fno-omit-frame-pointer -fno-lto"
		CXXFLAGS+=" -O1 -g -fno-omit-frame-pointer -fno-lto"
		LDFLAGS+=" -fno-lto"
		## --- ASan diagnostic build (do not ship) this runs ---
		#CFLAGS+=" -O1 -g -fno-omit-frame-pointer -fsanitize=address -fno-lto"
		#CXXFLAGS+=" -O1 -g -fno-omit-frame-pointer -fsanitize=address -fno-lto"
		#LDFLAGS+=" -fsanitize=address -fno-lto"

}
