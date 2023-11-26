# Maintainer: Molchanov Alexandr <amol4anov@mail.ru>

pkgname=('bootsplash-theme-sakura')
pkgver=2.0
pkgrel=1
arch=('x86_64')
pkgdesc="Simple Bootsplash Sakura Theme"
license=('GPL')
depends=()
optdepends=('bootsplash-systemd: for bootsplash functionality')
makedepends=('imagemagick')
options=('!libtool' '!emptydirs')

source=('bootsplash-packer'
	'bootsplash-sakura.sh'
	'bootsplash-sakura.initcpio_install'
	'logo.gif')

sha256sums=('51559d3ccfb448b03fa6439faf5869dbd0c2fbda1b5d5bf5d4ba70e60937472a'
            '9d6656f2882f9805cd38f3f4b73ff91dabb9713823ac94bf8789719f00347a40'
            '576feb026d57cf4d2064e0a8651fc876047422580c39ab4bce5df7693f50f711'
            'f29c2daaa77d1be271a5bbbf1f0174855b002f37048bfe514b023968c3b4eb83')

build() {
  cd "$srcdir"
  sh ./bootsplash-sakura.sh
}

package_bootsplash-theme-sakura() {
  pkgdesc="Bootsplash with cool sakura tree"
  cd "$srcdir"

  install -Dm644 "$srcdir/bootsplash-sakura" "$pkgdir/usr/lib/firmware/bootsplash-themes/sakura/bootsplash"
  install -Dm644 "$srcdir/bootsplash-sakura.initcpio_install" "$pkgdir/usr/lib/initcpio/install/bootsplash-sakura"
}
