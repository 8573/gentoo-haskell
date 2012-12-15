# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A static website compiler library"
HOMEPAGE="http://jaspervdj.be/hakyll"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="+unixFilter +previewServer"

RDEPEND=">=app-text/pandoc-1.9.3:=[profile?]
		<app-text/pandoc-1.10:=[profile?]
		>=dev-haskell/binary-0.5:=[profile?]
		<dev-haskell/binary-0.7:=[profile?]
		=dev-haskell/blaze-html-0.5*:=[profile?]
		>=dev-haskell/blaze-markup-0.5.1:=[profile?]
		<dev-haskell/blaze-markup-0.6:=[profile?]
		>=dev-haskell/citeproc-hs-0.3.2:=[profile?]
		<dev-haskell/citeproc-hs-0.4:=[profile?]
		>=dev-haskell/cryptohash-0.7:=[profile?]
		<dev-haskell/cryptohash-0.9:=[profile?]
		>=dev-haskell/hamlet-1.0:=[profile?]
		<dev-haskell/hamlet-1.2:=[profile?]
		>=dev-haskell/lrucache-1.1.1:=[profile?]
		<dev-haskell/lrucache-1.2:=[profile?]
		>=dev-haskell/mtl-1:=[profile?]
		<dev-haskell/mtl-2.2:=[profile?]
		>=dev-haskell/parsec-3.0:=[profile?]
		<dev-haskell/parsec-3.2:=[profile?]
		=dev-haskell/regex-base-0.93*:=[profile?]
		=dev-haskell/regex-tdfa-1.1*:=[profile?]
		>=dev-haskell/snap-core-0.6:=[profile?]
		<dev-haskell/snap-core-0.10:=[profile?]
		>=dev-haskell/snap-server-0.6:=[profile?]
		<dev-haskell/snap-server-0.10:=[profile?]
		>=dev-haskell/tagsoup-0.12.6:=[profile?]
		<dev-haskell/tagsoup-0.13:=[profile?]
		>=dev-haskell/text-0.11:=[profile?]
		<dev-haskell/text-1.12:=[profile?]
		>=dev-lang/ghc-6.12.1:="
DEPEND="${RDEPEND}
		test? ( =dev-haskell/hunit-1.2*
			>=dev-haskell/quickcheck-2.4
			<dev-haskell/quickcheck-2.6
			>=dev-haskell/test-framework-0.4
			<dev-haskell/test-framework-0.9
			>=dev-haskell/test-framework-hunit-0.2
			<dev-haskell/test-framework-hunit-0.4
			>=dev-haskell/test-framework-quickcheck2-0.2
			<dev-haskell/test-framework-quickcheck2-0.4
		)
		>=dev-haskell/cabal-1.8"

src_prepare() {
	cabal_chdeps \
		'cryptohash   >= 0.7    && < 0.8' 'cryptohash   >= 0.7    && < 0.9' \
		'test-framework             >= 0.4 && < 0.7' 'test-framework             >= 0.4 && < 0.9' \
		'test-framework-hunit       >= 0.2 && < 0.3' 'test-framework-hunit       >= 0.2 && < 0.4' \
		'test-framework-quickcheck2 >= 0.2 && < 0.3' 'test-framework-quickcheck2 >= 0.2 && < 0.4'
}

src_configure() {
	cabal_src_configure \
		$(cabal_flag unixFilter unixFilter) \
		$(cabal_flag previewServer previewServer)
}
