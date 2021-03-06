# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.2.9999

GTK_MAJ_VER="3"

MY_PN=gtksourceview${GTK_MAJ_VER}

#nocabaldep is for the fancy cabal-detection feature at build-time
CABAL_FEATURES="lib profile haddock hoogle hscolour nocabaldep"
inherit git-2 haskell-cabal

DESCRIPTION="Binding to the GtkSourceView library"
HOMEPAGE="http://projects.haskell.org/gtk2hs/"
EGIT_REPO_URI="https://github.com/gtk2hs/gtksourceview.git"

LICENSE="LGPL-2.1"
SLOT="${GTK_MAJ_VER}/${PV}"
KEYWORDS=""
IUSE=""

RDEPEND=">=dev-haskell/glib-0.13:=[profile?] <dev-haskell/glib-0.14:=[profile?]
	>=dev-haskell/gtk-0.13.0.0:${GTK_MAJ_VER}=[profile?] <dev-haskell/gtk-0.14:${GTK_MAJ_VER}=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	x11-libs/gtksourceview:2.0
"
DEPEND="${RDEPEND}
	>=dev-haskell/gtk2hs-buildtools-0.13.0.2:0=
	virtual/pkgconfig
"
