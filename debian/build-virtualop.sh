#!/bin/bash

set -euo pipefail
IFS=$'\n\t'

DEBIAN_DIR=$( cd $(dirname "${BASH_SOURCE[0]}") && pwd )

cd $DEBIAN_DIR
dpkg-deb --build virtualop
