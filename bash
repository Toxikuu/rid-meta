#!/bin/bash
NAME="bash"
VERS=5.2.37
LINK="https://ftp.gnu.org/gnu/bash/bash-$VERS.tar.gz"
DEPS=""


IDIR=$(cat << '~fin.'

./configure --prefix=/usr             \
            --without-bash-malloc     \
            --with-installed-readline \
            bash_cv_strtold_broken=no \
            --docdir=/usr/share/doc/bash-5.2.37

make
make install

echo "You should now run:" 
echo "exec /usr/bin/bash --login"

rm -vf /usr/bin/bashbug

~fin.
)

RDIR=$(cat << '~fin.'

echo not implemented

~fin.
)

UDIR=$(cat << '~fin.'
~fin.
)
