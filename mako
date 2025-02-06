#!/bin/bash
NAME="mako"
VERS="1.3.9"
LINK="https://github.com/sqlalchemy/mako/archive/refs/tags/rel_${VERS//./_}.tar.gz"
UPST="https://github.com/sqlalchemy/mako.git"
DEPS=""


idir() {

pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
pip3 install --no-index --find-links=dist --no-cache-dir --no-user Mako

}

rdir() {

PV=$(gv python)
PV=${PV%.*}

rm -vf /usr/bin/mako-render
rm -rvf /usr/lib/python$PV/site-packages/{mako,Mako-$VERS.dist-info}

}
