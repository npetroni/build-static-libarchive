#!/bin/sh

curl -L -o xz-5.2.5.tar.gz https://sourceforge.net/projects/lzmautils/files/xz-5.2.5.tar.gz/download
curl -o openssl-1.1.1k.tar.gz https://www.openssl.org/source/openssl-1.1.1k.tar.gz
curl -o zlib-1.2.11.tar.gz https://zlib.net/zlib-1.2.11.tar.gz
curl -o bzip2-1.0.8.tar.gz https://www.sourceware.org/pub/bzip2/bzip2-1.0.8.tar.gz
curl -o libarchive-3.5.1.tar.gz https://libarchive.org/downloads/libarchive-3.5.1.tar.gz

tar xfz bzip2-1.0.8.tar.gz
make -C bzip2-1.0.8 CFLAGS=-fPIC
make -C bzip2-1.0.8 install

tar xfz openssl-1.1.1k.tar.gz
cd openssl-1.1.1k
./config LDFLAGS=-fPIC CFLAGS=-fPIC
make
make install
