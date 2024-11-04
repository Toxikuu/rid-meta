#!/bin/bash
NAME="flex"
VERS="${NAME}_version"; VERS="${!VERS}"
LINK="https://github.com/westes/flex/releases/download/v$VERS/flex-$VERS.tar.gz"
UPST="https://github.com/westes/flex/tags"
DEPS=""


IDIR=$(cat << '~fin.'

cm --disable-doc

ln -sv flex   /usr/bin/lex
ln -sv flex.1 /usr/share/man/man1/lex.1

~fin.
)

RDIR=$(cat << '~fin.'

rm -vf  /usr/bin/lex        \
        /usr/bin/flex{,++}  \
        /usr/lib{,32}/libfl.so*

~fin.
)

UDIR=$(cat << '~fin.'
~fin.
)
