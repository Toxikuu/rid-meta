#!/bin/bash
NAME="gawk"
VERS="5.3.1"
LINK="https://ftp.gnu.org/gnu/gawk/gawk-$VERS.tar.xz"
UPST="https://git.savannah.gnu.org/git/gawk.git"
DEPS=""


idir() {

sed -i 's/extras//' Makefile.in
rm -vf /usr/bin/gawk-$VERS

cm

ln -sv gawk.1 /usr/share/man/man1/awk.1

}

rdir() {

rm -rvf /usr/lib/gawk       \
        /usr/libexec/awk    \
        /usr/share/awk

rm -vf  /usr/bin/{g,}awk    \
        /usr/bin/gawk-$VERS

    }
