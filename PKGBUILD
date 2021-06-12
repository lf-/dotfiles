pkgname=brlcad-git
pkgver=rel.7.24.0.r21774.gf91ea585c1
pkgrel=1
pkgdesc='An extensive 3D solid modeling system.'
url='https://brlcad.org'
license=('LGPL' 'BSD' 'custom:BDL')
arch=('i686' 'x86_64')
depends=('libgl' 'libxft' 'libxi')
makedepends=('cmake' 'ninja')
conflicts=('brlcad')
install="${pkgname}.install"
source=(
    'build.patch'
    'limits.patch'
    'git+https://github.com/BRL-CAD/brlcad')
sha256sums=(
    'c32da1414f7e3a3489bfd7023c521cb8d0abd35421a0157f62634c824604a320'
    '32159ad23830fce85724806937cf5dd7c0d58d9c4d09deeeeb70d1673b4dc205'
    'SKIP')


_build_config='Release'
_pkgprefix="/opt/${pkgname}"

pkgver() {
    cd "brlcad"
    git describe --long | sed 's/\([^-]*-g\)/r\1/;s/-/./g'
}

prepare() {
    patch \
        --quiet \
        --strip=0 \
        "--directory=${srcdir}/brlcad" \
        "--input=${srcdir}/build.patch"
    patch \
        -p1 \
        "--directory=${srcdir}/brlcad" \
        "--input=${srcdir}/limits.patch"
}


build() {
    cmake \
        -G Ninja \
        -S "${srcdir}/brlcad" \
        -B "${srcdir}/build" \
        -Wno-dev \
        "-DCMAKE_INSTALL_PREFIX=${_pkgprefix}" \
        "-DCMAKE_BUILD_TYPE=${_build_config}" \
        -DBUILD_STATIC_LIBS=OFF \
        -DBRLCAD_ENABLE_COMPILER_WARNINGS=OFF \
        -DBRLCAD_ENABLE_STRICT=OFF \
        -DBRLCAD_FLAGS_DEBUG=OFF \
        -DBRLCAD_BUNDLED_LIBS=BUNDLED \
        -DBRLCAD_FREETYPE=OFF \
        -DBRLCAD_PNG=OFF \
        -DBRLCAD_REGEX=OFF \
        -DBRLCAD_ZLIB=OFF \
        -DBRLCAD_ENABLE_OPENGL=ON \
        -DBRLCAD_ENABLE_QT=OFF

    cmake --build "${srcdir}/build" --config "${_build_config}"

    echo \
        "export PATH=\"\$PATH:${_pkgprefix}/bin\"" \
        >"${srcdir}/build/${pkgname}.sh"
}


package() {
    cmake \
        --install "${srcdir}/build" \
        --config "${_build_config}" \
        --prefix "${pkgdir}${_pkgprefix}"

    install \
        -D \
        --mode=u=rw,go=r \
        "--target-directory=${pkgdir}/usr/share/licenses/${pkgname}" \
        "${srcdir}/build/share/doc/legal/"{bdl,bsd}.txt

    install \
        -D \
        --mode=u=rw,go=r \
        "--target-directory=${pkgdir}/etc/profile.d" \
        "${srcdir}/build/${pkgname}.sh"
}
