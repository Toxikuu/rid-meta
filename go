#!/bin/bash
. ../versions
NAME="go"
VERS="${NAME}_version"; VERS="${!VERS}"
LINK="https://go.dev/dl/go$VERS.linux-amd64.tar.gz"
UPST="https://go.dev/dl/"
SELE="div.filename:nth-child(2) > span:nth-child(2)"
DEPS=""

# go depends on go, and it's bootstrapping hell; ergo binary install

IDIR=$(cat << '~fin.'

mkdir -pv /opt/go
cp -rvf * /opt/go

if ! grep -q "# go end" /etc/env ; then
    cat << 'EOF' >> /etc/env

    # go
    pathappend /opt/go/bin
    # go end

EOF
fi

~fin.
)

RDIR=$(cat << '~fin.'

echo not implemented

~fin.
)

UDIR=$(cat << '~fin.'
~fin.
)
