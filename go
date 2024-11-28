#!/bin/bash
NAME="go"
VERS="1.23.3"
LINK="https://go.dev/dl/go$VERS.linux-amd64.tar.gz"
UPST="https://github.com/golang/go.git"
VCMD="git ls-remote --tags '$UPST' | sed 's:.*/::' | sort -V | grep -B1 release.r56 | head -n1 | sed 's/go//'"
DEPS=""

# go depends on go, and it's bootstrapping hell; ergo binary install

idir() {

GO_HOME="/opt/go"

mkdir -pv "$GO_HOME"
cp -rvf * "$GO_HOME"

if ! grep -q "# go end" /etc/env ; then
    cat << EOF >> /etc/env

    # go
    export GO_HOME="$GO_HOME"
    export GOPATH="\$GO_HOME"
    pathappend "\$GO_HOME/bin"
    # go end
EOF
fi

}

rdir() {

rm -rvf /opt/go
sed -i '/    # go/,/    # go end/d' /etc/env

}
