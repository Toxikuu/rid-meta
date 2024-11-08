#!/bin/bash
NAME="mako"
VERS="1.3.6"
LINK="https://files.pythonhosted.org/packages/source/M/Mako/Mako-1.3.5.tar.gz"
UPST="https://pypi.org/project/Mako"
DEPS=""


IDIR=$(cat << '~fin.'

pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
pip3 install --no-index --find-links=dist --no-cache-dir --no-user Mako

~fin.
)

RDIR=$(cat << '~fin.'

PV=$(gv python)
PV=${PV%.*}

rm -vf /usr/bin/mako-render
rm -rvf /usr/lib/python$PV/site-packages/{mako,Mako-$VERS.dist-info}

~fin.
)

UDIR=$(cat << '~fin.'
~fin.
)
