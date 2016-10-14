# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

DESCRIPTION="ripgrep combines the usability of The Silver Searcher with the raw speed of grep"
HOMEPAGE="https://github.com/BurntSushi/ripgrep"
SRC_URI="https://github.com/BurntSushi/ripgrep/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="|| ( MIT Unlicense )"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="dev-util/cargo"

src_compile() {
	if command -v rustup > /dev/null 2>&1; then
		CARGO_RUNNER="RUSTFLAGS=\"-C target-cpu=native\" rustup run nightly"
		CARGO_FLAGS="--features simd-accel"
	elif rustc --version | grep -q nightly; then
		CARGO_RUNNER="RUSTFLAGS=\"-C target-cpu=native\""
		CARGO_FLAGS="--features simd-accel"
	fi

	$CARGO_RUNNER cargo build -v --release $CARGO_FLAGS
}

src_install() {
	dobin target/release/rg
	doman doc/rg.1
	dodoc README.md
}
