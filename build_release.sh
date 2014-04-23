#!/bin/sh
qmake RELEASE=1 USE_QRCODE=1
make -j 4
cd src
make STATIC=1 -j 4 -f makefile.unix
cd ..
mkdir ecocoin
cp ecocoin-qt ecocoin/
cp src/ecocoind ecocoin/
zip -r ~/ecocoin.zip ecocoin/
rm -rf ecocoin/
