#!/bin/bash
NAME="bash"
VERS="${!NAME}_version"
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

rm -vf /usr/bin/bashbug

echo "You should now run:" 
echo "exec /usr/bin/bash --login"

~fin.
)

RDIR=$(cat << '~fin.'

echo not implemented

~fin.
)

UDIR=$(cat << '~fin.'
~fin.
)
