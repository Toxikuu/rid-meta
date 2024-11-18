#!/bin/bash
NAME="swig"
VERS="4.3.0"
LINK="https://downloads.sourceforge.net/swig/swig-$VERS.tar.gz"
UPST="https://sourceforge.net/projects/swig/files/"
SELE=".sub-label"
DEPS="pcre2"


idir() {

cm --without-javascript --without-maximum-compile-warnings

}

rdir() {

rm -rvf /usr/share/swig
rm -vf /bin/{,ccache-}swig

}


