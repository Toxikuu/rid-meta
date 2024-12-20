#!/bin/bash
NAME="jq"
VERS="1.7.1"
LINK="https://github.com/jqlang/jq/releases/download/jq-$VERS/jq-$VERS.tar.gz"
UPST=""
DEPS="autoconf automake bison flex python glibc"


idir() {

cm

}

rdir() {

rm -vf /usr/bin/jq

}
