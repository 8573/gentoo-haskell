# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.2.18.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A library for generating RSS 2.0 feeds."
HOMEPAGE="https://github.com/basvandijk/rss"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="public-domain"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/haxml-1.19.2:=[profile?] <dev-haskell/haxml-1.25:=[profile?]
		>=dev-haskell/network-2.0:=[profile?] <dev-haskell/network-2.6:=[profile?]
		>=dev-lang/ghc-6.12.1:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

src_prepare() {
	cabal_chdeps \
		'HaXml      >= 1.19.2 && < 1.24' 'HaXml      >= 1.19.2 && < 1.25' \
		'network    >= 2.0    && < 2.5' 'network    >= 2.0    && < 2.6'
}