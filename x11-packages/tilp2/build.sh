TERMUX_PKG_HOMEPAGE="http://lpg.ticalc.org/prj_tilp/"
TERMUX_PKG_DESCRIPTION="TiLP is a linking program for Texas Instruments' graphing calculators."
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="3ls-it <3ls-it@pm.me>"
TERMUX_PKG_VERSION=1.18
# No version number in the tarball; this is the cannonical source
TERMUX_PKG_SRCURL="https://www.ticalc.org/pub/unix/tilp.tar.gz"
TERMUX_PKG_SHA256=6ba834f7fdbbce9818ccaa864222aed2d1688b210e9ff2c59576d1fde5159cd7
TERMUX_PKG_AUTO_UPDATE=false
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_DEPENDS="gettext, glib, gtk2, libticables2, libticalcs2, libticonv, libtifiles2, termux-api, zlib"
TERMUX_PKG_SUGGESTS="tiemu"

termux_step_pre_configure() {
		autoreconf -fi
}
