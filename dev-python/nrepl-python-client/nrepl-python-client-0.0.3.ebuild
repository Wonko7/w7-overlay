# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
PYTHON_COMPAT=( python3_{4,5,6} )

inherit distutils-r1

KEYWORDS="~amd64"
SRC_URI="https://github.com/clojure-vim/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"
https://github.com/rust-lang/cargo/archive

DESCRIPTION="Surprisingly, an nREPL client written in Python."
HOMEPAGE=" https://github.com/clojure-vim/nrepl-python-client"
LICENSE="MIT"
SLOT="0"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
