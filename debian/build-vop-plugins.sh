#!/bin/bash

set -euo pipefail
IFS=$'\n\t'

DEBIAN_DIR=$( cd $(dirname "${BASH_SOURCE[0]}") && pwd )
PLUGIN_ROOT=$( cd "$DEBIAN_DIR/../../plugins" && pwd )
TARGET=$DEBIAN_DIR/vop-plugins/usr/lib/vop-plugins
echo "plugin root : $PLUGIN_ROOT"
echo "target dir : $TARGET"

mkdir -p $TARGET
cd $PLUGIN_ROOT
for f in Gemfile* *.gemspec Rakefile vendor features services; do
  if [ -e $f ]; then
    cp -r $f $TARGET/
  fi
done

cd $DEBIAN_DIR
dpkg-deb --build vop-plugins
