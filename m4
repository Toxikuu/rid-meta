#!/bin/bash
NAME="m4"
VERS="1.4.19"
LINK="https://ftp.gnu.org/gnu/m4/m4-$VERS.tar.xz"
UPST="https://git.savannah.gnu.org/git/m4.git"
VCMD="git ls-remote --tags '$UPST' | sed 's:.*/::' | sort -V | grep -B1 v1.5.89a | head -n1"
DEPS=""


idir() {

cm

}

rdir() {

rm -vf /usr/bin/m4

}
