#!/bin/bash
NAME="bison"
VERS="3.8.2"
LINK="https://ftp.gnu.org/gnu/bison/bison-$VERS.tar.xz"
UPST="https://git.savannah.gnu.org/git/bison.git"
VCMD="git ls-remote --tags '$UPST' | sed 's:.*/::' | sort -V | tail -n2 | head -n1"
DEPS=""


idir() {

cm --docdir=/tmp/rid/trash

}

rdir() {

rm -rvf /usr/share/bison
rm -vf  /usr/bin/{bison,yacc}   \
        /usr/lib/liby.a

    }
