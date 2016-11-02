# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

# based on Jan Chren (rindeal)'s ebuild.

EAPI=6

GH_URI="github/lxde"
SRC_URI="https://github.com/lxde/pavucontrol-qt/releases/download/${PV}/${P}.tar.xz"
HOMEPAGE="https://github.com/lxde/pavucontrol-qt"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"

inherit cmake-utils

DESCRIPTION="Qt port of pavucontrol"
LICENSE="GPL-2"

SLOT="0"

IUSE="doc"

CDEPEND="
	dev-libs/glib:2
	lxqt-base/liblxqt
	media-sound/pulseaudio[glib]
	dev-qt/qtdbus:5
	dev-qt/qtwidgets:5"
DEPEND="${CDEPEND}
	dev-qt/linguist-tools:5
	virtual/pkgconfig
	x11-misc/xdg-user-dirs"
RDEPEND="${CDEPEND}"

src_configure() {
	local mycmakeargs=(
		# workaround for missing cmake modules
		# TODO: remove this once lxqt-base/liblxqt>10.0 hits the tree
		-DCMAKE_MODULE_PATH="${FILESDIR}/cmake-find-modules"
	)
	cmake-utils_src_configure
}
