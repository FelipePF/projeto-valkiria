#!/bin/bash

# Diretório para baixar os pacotes
mkdir -p ~/lfs_sources
cd ~/lfs_sources || exit

# URLs base genéricas do LFS/BLFS (você deve ajustar versões se necessário)
LFS_BASE="http://www.linuxfromscratch.org/lfs/downloads/stable/"
BLFS_BASE="http://www.linuxfromscratch.org/blfs/downloads/BLFS-11.2/"

# Lista de pacotes núcleo do LFS
LFS_PACKAGES=(
    "bash-5.3.tar.gz"
    "bc-1.07.1.tar.xz"
    "binutils-2.41.tar.xz"
    "coreutils-9.2.tar.xz"
    "diffutils-3.9.tar.xz"
    "file-5.42.tar.gz"
    "findutils-4.9.0.tar.gz"
    "gawk-5.2.2.tar.xz"
    "gcc-13.2.0.tar.xz"
    "gettext-0.22.3.tar.xz"
    "glibc-2.41.tar.xz"
    "grep-3.12.tar.xz"
    "gzip-1.12.tar.xz"
    "m4-1.4.21.tar.xz"
    "man-db-2.11.2.tar.xz"
    "procps-ng-4.2.0.tar.xz"
    "psmisc-23.6.tar.xz"
    "sed-4.9.tar.xz"
    "shadow-2.9.1.tar.xz"
    "systemd-253.tar.xz"
    "tar-1.34.tar.xz"
    "util-linux-2.39.tar.xz"
    "zlib-1.2.13.tar.xz"
)

# Lista de pacotes BLFS
BLFS_PACKAGES=(
    "at-3.1.26.tar.gz"
    "batch-1.23.tar.gz"
    "alsa-1.2.10.1.tar.bz2"
    "atk-2.40.0.tar.xz"
    "cairo-1.18.2.tar.xz"
    "freetype-2.13.1.tar.xz"
    "fontconfig-2.14.2.tar.xz"
    "gtk+-3.24.34.tar.xz"
    "libxml2-2.11.4.tar.xz"
    "libxslt-1.1.37.tar.gz"
    "cups-2.5.14-source.tar.gz"
    "ghostscript-10.03.tar.xz"
    "sane-backends-1.2.3.tar.gz"
)

# Função para baixar pacotes LFS
download_lfs() {
    for pkg in "${LFS_PACKAGES[@]}"; do
        echo "Baixando $pkg..."
        wget -c "$LFS_BASE/sources/$pkg"
    done
}

# Função para baixar pacotes BLFS
download_blfs() {
    for pkg in "${BLFS_PACKAGES[@]}"; do
        echo "Baixando $pkg..."
        wget -c "$BLFS_BASE/$pkg"
    done
}

# Executando downloads
download_lfs
download_blfs

echo "Todos os pacotes foram baixados para ~/lfs_sources"
