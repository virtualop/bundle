#!/bin/bash

DEBIAN_DIR=$( cd $(dirname "${BASH_SOURCE[0]}") && pwd )
BUNDLE_DIR=$( cd "$DEBIAN_DIR/.." && pwd )
VOP_ROOT=$( cd "$BUNDLE_DIR/../vop" && pwd )
echo "vop root : $VOP_ROOT"
TARGET_DIR=$DEBIAN_DIR/vop
echo "target dir : $TARGET_DIR"

VOP_TARGET=$TARGET_DIR/usr/lib/vop
mkdir -p $VOP_TARGET
cd $VOP_ROOT && \
  cp -r bin exe Gemfile* lib Rakefile vendor *.gemspec $VOP_TARGET
