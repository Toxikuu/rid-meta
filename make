#!/bin/bash
NAME="make"
VERS="${NAME}_version"; VERS="${!VERS}"
LINK="https://ftp.gnu.org/gnu/make/make-$VERS.tar.gz"
UPST="https://ftp.gnu.org/gnu/make/?C=M;O=D"
DEPS=""


IDIR=$(cat << '~fin.'

cm

~fin.
)

RDIR=$(cat << '~fin.'

rm -vf /usr/bin/make

~fin.
)

UDIR=$(cat << '~fin.'
~fin.
)
