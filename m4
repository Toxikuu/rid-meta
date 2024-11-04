#!/bin/bash
NAME="m4"
VERS="${NAME}_version"; VERS="${!VERS}"
LINK="https://ftp.gnu.org/gnu/m4/m4-$VERS.tar.xz"
UPST="https://ftp.gnu.org/gnu/m4/?C=M;O=D"
SELE="body > table:nth-child(2) > tbody:nth-child(1) > tr:nth-child(5) > td:nth-child(2) > a:nth-child(1)"
DEPS=""


IDIR=$(cat << '~fin.'

cm

~fin.
)

RDIR=$(cat << '~fin.'

rm -vf /usr/bin/m4

~fin.
)

UDIR=$(cat << '~fin.'
~fin.
)
