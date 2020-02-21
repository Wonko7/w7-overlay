# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

PYTHON_COMPAT=(python{3_6,3_7,3_8})

DISTUTILS_SINGLE_IMPL=true
inherit distutils-r1

DESCRIPTION="Securely and anonymously share files of any size behind a TOR hidden service."
HOMEPAGE="https://onionshare.org"
SRC_URI="https://codeload.github.com/micahflee/${PN}/tar.gz/v${PV} -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

# TODO: check flask-httpauth on each vbump.
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
		dev-python/PyQt5[${PYTHON_USEDEP}]
		dev-python/flask[${PYTHON_USEDEP}]
		dev-python/werkzeug[${PYTHON_USEDEP}]
		dev-python/urllib3[${PYTHON_USEDEP}]
		dev-python/requests[${PYTHON_USEDEP}]
		dev-python/flask-httpauth[${PYTHON_USEDEP}]
		net-libs/stem[${PYTHON_USEDEP}]
		${PYTHON_DEPS}"

RDEPEND="${DEPEND}"
