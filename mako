#!/bin/bash
NAME="mako"
VERS=1.3.5
LINK="https://files.pythonhosted.org/packages/source/M/Mako/Mako-1.3.5.tar.gz"
DEPS=""


IDIR=$(cat << 'EOF'

pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
pip3 install --no-index --find-links=dist --no-cache-dir --no-user Mako

EOF
)

RDIR=$(cat <<EOF

rm -vf /usr/bin/mako-render
rm -rvf /usr/lib/python3.12/site-packages/{mako,Mako-$VERS.dist-info}

EOF
)

UDIR=$(cat <<EOF
EOF
)
