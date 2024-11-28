#!/bin/bash
NAME="bash"
VERS="5.2.37"
LINK="https://ftp.gnu.org/gnu/bash/bash-$VERS.tar.gz"
UPST="git://git.savannah.gnu.org/bash.git"
VCMD="curl -s 'https://ftp.gnu.org/gnu/bash/?C=M;O=D' | grep bash- | head -n1 | cut -d'\"' -f8 | cut -d- -f2 | cut -d. -f1-3" # bash doesn't tag patches
DEPS=""


idir() {

cm \
	--without-bash-malloc		\
	--with-installed-readline	\
	--docdir=/usr/share/doc/bash-$VERS

rm -vf /usr/bin/bashbug

echo "To replace the current shell, run:" >&2
echo "exec /usr/bin/bash --login" >&2

}

rdir() {

echo not implemented

}
