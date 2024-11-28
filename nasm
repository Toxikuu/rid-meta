#!/bin/bash
NAME="nasm"
VERS="2.16.03"
LINK="https://www.nasm.us/pub/nasm/releasebuilds/$VERS/nasm-$VERS.tar.xz"
UPST="https://github.com/netwide-assembler/nasm.git"
VCMD="git ls-remote --tags 'https://github.com/netwide-assembler/nasm.git' | sed 's:.*/::' | sed 's/\^{}//' | sed 's/rc/-rc/' | sort -V | tail -n3 | head -n1 | cut -d- -f2" # suboptimal
DEPS=""


idir() {

cm

}

rdir() {

rm -rvf \
    /usr/bin/nasm   \
    /usr/bin/ndisasm

}
