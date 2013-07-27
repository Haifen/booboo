# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit eutils games git-2

EGIT_REPO_URI='https://github.com/jamespetts/simutrans-pak128.britain.git'

DESCRIPTION="Britain pakset for Simutrans Experimental"
HOMEPAGE="http://www.simutrans.com/"
SRC_URI=""

LICENSE="Artistic"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="games-simulation/simutrans-exp"
RDEPEND=""

src_compile()
{
	mkdir destdir
	emake MAKEOBJ=/usr/lib/games/simutrans-exp/makeobj DESTDIR=destdir
}

src_install()
{
	insinto "${GAMES_DATADIR}"/simutrans-exp
	cd destdir
	doins -r pak128.Britain-Ex || die "doins failed"
}
