#!/bin/bash
set -e

echo "Memeriksa apakah pip sudah terinstal..."
if ! command -v pip &> /dev/null
then
    echo "pip tidak ditemukan, silakan instal pip terlebih dahulu."
    exit 1
else
    echo "pip terdeteksi. Melanjutkan..."
fi

echo "Memperbarui pip ke versi terbaru..."

packages=(
    pycryptodome
    cryptography
    requests
    rich
    futures
    pycryptodomex
    PyNaCl
)

echo "Memulai proses instalasi paket..."
for package in "${packages[@]}"
do
    if python -c "import $package" &> /dev/null; then
        echo "Paket '$package' sudah terinstal, melewati..."
    else
        echo "Menginstal '$package'..."
        pip install $package
    fi
done

echo "Semua paket telah terinstal atau sudah ada!"
