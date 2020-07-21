# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit cmake-multilib

if [[ ${PV} == 9999 ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/microsoft/ProcMon-for-Linux"
	S="${WORKDIR}/ProcMon-for-Linux-${PV}"
else
	SRC_URI="https://github.com/microsoft/ProcMon-for-Linux/archive/${PV}.zip -> ${P}.zip"
	S="${WORKDIR}/ProcMon-for-Linux-${PV}"
	KEYWORDS="~amd64 ~x86 ~x86-fbsd ~amd64-linux ~x86-linux"
fi


SLOT="0"
DESCRIPTION="From microsoft: Procmon provides a convenient and efficient way for Linux developers to trace the syscall activity on the system."
HOMEPAGE="https://github.com/microsoft/ProcMon-for-Linux"


RDEPEND="
	dev-libs/libedit
	sys-libs/zlib
	sys-devel/flex
	sys-devel/bison
	virtual/libelf
	dev-util/bcc"

DEPEND="${RDEPEND}"
LICENSE="MIT"
