#!/bin/bash
NAME="bison"
VERS="3.8.2"
LINK="https://ftp.gnu.org/gnu/bison/bison-$VERS.tar.xz"
UPST="https://ftp.gnu.org/gnu/bison/?C=M;O=D"
DEPS=""


idir() {

cm --docdir=/tmp/rid/trash

}

rdir() {

rm -rvf /usr/share/bison
rm -vf  /usr/bin/{bison,yacc}   \
        /usr/lib/liby.a

    }
