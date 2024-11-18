#!/bin/bash
NAME="nasm"
VERS="2.16.03"
LINK="https://www.nasm.us/pub/nasm/releasebuilds/$VERS/nasm-$VERS.tar.xz"
UPST="https://www.nasm.us/pub/nasm/releasebuilds/?C=M;O=D"
SELE="tr.odd:nth-child(4) > td:nth-child(2) > a:nth-child(1)"
DEPS=""


idir() {

cm

}

rdir() {

rm -rvf \
    /usr/bin/nasm   \
    /usr/bin/ndisasm

}
