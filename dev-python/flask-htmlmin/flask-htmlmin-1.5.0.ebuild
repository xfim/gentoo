# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{6,7} )

MY_PN="Flask-HTMLmin"
MY_P=${MY_PN}-${PV}

inherit distutils-r1

DESCRIPTION="Minimize your flask rendered html"
HOMEPAGE="https://github.com/hamidfzm/Flask-HTMLmin"
SRC_URI="mirror://pypi/${MY_PN:0:1}/${MY_PN}/${MY_P}.tar.gz"

LICENSE="BSD"

SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	app-text/htmlmin
	dev-python/flask
"

DEPEND="${RDEPEND}
	dev-python/pytest-runner[${PYTHON_USEDEP}]
	dev-python/setuptools[${PYTHON_USEDEP}]
"

S="${WORKDIR}/${MY_P}"

# Needs some kind of magic to actually test.
RESTRICT="test"
