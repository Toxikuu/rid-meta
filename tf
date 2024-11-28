#!/bin/bash
NAME="tf"
VERS="9999"
LINK="https://github.com/Toxikuu/tf/archive/refs/heads/main.tar.gz"
DEPS="python"


idir() {

# necessary since tf doesn't account for rid's versioned source folders
sed -i "28s/tf/tf-$VERS/" install.sh
yes 'y' | ./install.sh

}

rdir() {

rm -rvf /usr/lib/tf
rm -vf  /usr/bin/tf

}
