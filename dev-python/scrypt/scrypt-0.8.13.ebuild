# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python{2_7,3_4,3_5,3_6,3_7} pypy )

inherit distutils-r1

DESCRIPTION="Bindings for the scrypt key derivation function library"
HOMEPAGE="https://bitbucket.org/mhallin/py-scrypt/wiki/Home/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="BSD-2"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
SLOT="0"
IUSE="libressl test doc"

RDEPEND="
	!libressl? ( >=dev-libs/openssl-0.9.8:0=[-bindist(-)] )
    libressl? ( dev-libs/libressl:0= )
"
DEPEND="${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]"

python_test() {
	esetup.py test
}
