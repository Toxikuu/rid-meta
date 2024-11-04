#!/bin/bash
NAME="nasm"
VERS="${NAME}_version"; VERS="${!VERS}"
LINK="https://www.nasm.us/pub/nasm/releasebuilds/$VERS/nasm-$VERS.tar.xz"
UPST="https://www.nasm.us/pub/nasm/releasebuilds/?C=M;O=D"
SELE="tr.odd:nth-child(4) > td:nth-child(2) > a:nth-child(1)"
DEPS=""


IDIR=$(cat << '~fin.'

cm

~fin.
)

RDIR=$(cat << '~fin.'

rm -rvf \
    /usr/bin/nasm   \
    /usr/bin/ndisasm

~fin.
)

UDIR=$(cat << '~fin.'
~fin.
)
