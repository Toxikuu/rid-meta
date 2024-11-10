#!/bin/bash
NAME="go"
VERS="1.23.3"
LINK="https://go.dev/dl/go$VERS.linux-amd64.tar.gz"
UPST="https://go.dev/dl/"
SELE="div.filename:nth-child(2) > span:nth-child(2)"
DEPS=""

# go depends on go, and it's bootstrapping hell; ergo binary install

IDIR=$(cat << '~fin.'

GO_HOME="/opt/go"

mkdir -pv "$GO_HOME"
cp -rvf * "$GO_HOME"

if ! grep -q "# go end" /etc/env ; then
    cat << EOF >> /etc/env

    # go
    export GO_HOME=$GO_HOME
    pathappend "\$GO_HOME/bin"
    # go end
EOF
fi

~fin.
)

RDIR=$(cat << '~fin.'

rm -rvf /opt/go
sed -i '/    # go/,/    # go end/d' /etc/env

~fin.
)

UDIR=$(cat << '~fin.'
~fin.
)
