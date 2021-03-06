# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=2

DESCRIPTION="Extra preferences that are desired but are not worthy for Pidgin"
HOMEPAGE="http://gaim-extprefs.sourceforge.net"
SRC_URI="mirror://sourceforge/gaim-extprefs/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 hppa ppc sparc x86"
IUSE=""

RDEPEND="net-im/pidgin[gtk]"
DEPEND="
	virtual/pkgconfig
	${RDEPEND}"

src_install() {
	emake DESTDIR="${D}" install || die
}
