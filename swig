#!/bin/bash
NAME="swig"
VERS="4.3.0"
LINK="https://downloads.sourceforge.net/swig/swig-$VERS.tar.gz"
UPST="https://github.com/swig/swig.git"
VCMD="git ls-remote --tags '$UPST' | sed 's:.*/::' | sort -V | tail -n1"
DEPS="pcre2"


idir() {

cm --without-javascript --without-maximum-compile-warnings

}

rdir() {

rm -rvf /usr/share/swig
rm -vf /bin/{,ccache-}swig

}
