#!/bin/bash
NAME="sed"
VERS="${NAME}_version"; VERS="${!VERS}"
LINK="https://ftp.gnu.org/gnu/sed/sed-$VERS.tar.xz"
UPST="https://ftp.gnu.org/gnu/sed/?C=M;O=D"
DEPS=""


IDIR=$(cat << '~fin.'

cm

~fin.
)

RDIR=$(cat << '~fin.'

echo not implemented

~fin.
)

UDIR=$(cat << '~fin.'
~fin.
)
