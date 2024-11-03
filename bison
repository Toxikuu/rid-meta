#!/bin/bash
NAME="bison"
VERS="${NAME}_version"; VERS="${!VERS}"
LINK="https://ftp.gnu.org/gnu/bison/bison-$VERS.tar.xz"
DEPS=""


IDIR=$(cat << '~fin.'

cm --docdir=/tmp/rid/trash

~fin.
)

RDIR=$(cat << '~fin.'

rm -rvf /usr/share/bison
rm -vf  /usr/bin/{bison,yacc}   \
        /usr/lib/liby.a

~fin.
)

UDIR=$(cat << '~fin.'
~fin.
)
