# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.2.9999

GTK_MAJ_VER="3"

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit git-2 haskell-cabal

DESCRIPTION="GUI library for source code management systems"
HOMEPAGE="https://github.com/leksah/haskellVCSGUI"
EGIT_REPO_URI="https://github.com/leksah/haskellVCSGUI.git"
EGIT_SOURCEDIR="${WORKDIR}/${P}"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS=""
IUSE="+gtk3"

S="${WORKDIR}/${P}/${PN}"

RDEPEND=">=dev-haskell/mtl-2.0.1.0:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-haskell/vcswrapper-0.1.1:=[profile?] <dev-haskell/vcswrapper-0.2:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	gtk3? ( >=dev-haskell/gtk-0.13.0.0:3=[profile?] <dev-haskell/gtk-0.14:3=[profile?] )
	!gtk3? ( >=dev-haskell/gtk-0.13.0.0:2=[profile?] <dev-haskell/gtk-0.14:2=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag gtk3 gtk3)
}
