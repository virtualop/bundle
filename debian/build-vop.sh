#!/bin/bash

set -euo pipefail
IFS=$'\n\t'

DEBIAN_DIR=$( cd $(dirname "${BASH_SOURCE[0]}") && pwd )
VOP_ROOT=$( cd "$DEBIAN_DIR/../../vop" && pwd )
VOP_TARGET=$DEBIAN_DIR/vop/usr/lib/vop
echo "vop root : $VOP_ROOT"
echo "target dir : $VOP_TARGET"

mkdir -p $VOP_TARGET
cd $VOP_ROOT
cp -r bin exe Gemfile* lib Rakefile vendor *.gemspec $VOP_TARGET

cd $DEBIAN_DIR
dpkg-deb --build vop
