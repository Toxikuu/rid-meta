#!/bin/bash
NAME="gawk"
VERS="5.3.1"
LINK="https://ftp.gnu.org/gnu/gawk/gawk-$VERS.tar.xz"
UPST="https://ftp.gnu.org/gnu/gawk/?C=M;O=D"
SELE="body > table:nth-child(2) > tbody:nth-child(1) > tr:nth-child(6) > td:nth-child(2) > a:nth-child(1)"
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
