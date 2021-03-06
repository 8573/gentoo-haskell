# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="High level interface for webkit-javascriptcore"
HOMEPAGE="http://hackage.haskell.org/package/jsaddle"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+gtk3 +jsffi webkit"

RDEPEND=">=dev-haskell/lens-3.8.5:=[profile?]
	>=dev-haskell/text-0.11.2.3:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/transformers-0.3.0.0:=[profile?] <dev-haskell/transformers-0.5:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	gtk3? ( >=dev-haskell/webkit-0.13.0.0:3=[profile?] <dev-haskell/webkit-0.14:3=[profile?]
			>=dev-haskell/webkitgtk-javascriptcore-0.13.0.0:3=[profile?] <dev-haskell/webkitgtk-javascriptcore-0.14:3=[profile?] )
	!gtk3? ( >=dev-haskell/webkit-0.13.0.0:2=[profile?] <dev-haskell/webkit-0.14:2=[profile?]
			>=dev-haskell/webkitgtk-javascriptcore-0.13.0.0:2=[profile?] <dev-haskell/webkitgtk-javascriptcore-0.14:2=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( dev-haskell/hslogger
		webkit? ( dev-haskell/glib ) )
	gtk3? ( test? ( dev-haskell/glib
					dev-haskell/gtk:3 ) )
	!gtk3? ( test? ( dev-haskell/glib
					dev-haskell/gtk:2 ) )
	gtk3? ( test? ( webkit? ( dev-haskell/gtk:3 ) ) )
	!gtk3? ( test? ( webkit? ( dev-haskell/gtk:2 ) ) )
"

src_prepare() {
	cabal_chdeps \
		'lens >=3.8.5 && <4.7' 'lens >=3.8.5'
}

src_configure() {
	haskell-cabal_src_configure \
		--flags=-ghcjs \
		$(cabal_flag gtk3 gtk3) \
		$(cabal_flag jsffi jsffi) \
		$(cabal_flag webkit webkit)
}
