# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.14

EAPI="3"

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Jailed IO monad."
HOMEPAGE="http://hackage.haskell.org/package/jail"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="<dev-haskell/monads-fd-0.2
		<dev-haskell/transformers-0.3
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

src_prepare() {
	sed -e 's@containers ==0.2.\*@containers < 0.5@' \
		-e 's@directory ==1.0.\*@directory < 1.2@' \
		-e 's@monads-fd ==0.0.\*@monads-fd < 0.2@' \
		-e 's@transformers ==0.1.\*@transformers < 0.3@' \
		-i "${S}/${PN}.cabal" || die "Could not loosen dependencies"
}
