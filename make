#!/bin/bash
NAME="make"
VERS=4.4.1
LINK="https://ftp.gnu.org/gnu/make/make-$VERS.tar.gz"
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
