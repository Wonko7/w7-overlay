# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 python3_{6,7,8} )

MY_PN="Flask-HTTPAuth"
MY_P=${MY_PN}-${PV}

inherit distutils-r1

DESCRIPTION="Simple extension that provides Basic, Digest and Token HTTP authentication for Flask routes"
HOMEPAGE="https://github.com/miguelgrinberg/flask-httpauth"
SRC_URI="mirror://pypi/${MY_PN:0:1}/${MY_PN}/${MY_P}.tar.gz"

LICENSE="BSD"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	dev-python/flask
"

DEPEND="${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]
"

S="${WORKDIR}/${MY_P}"

# Needs some kind of magic to actually test.
RESTRICT="test"
