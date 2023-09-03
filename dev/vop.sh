#!/bin/bash

# TODO generalize
eval "$(rbenv init - bash)"

BUNDLE_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )

cd $BUNDLE_DIR
bundle exec ../vop/exe/vop "$*"

cd - >/dev/null
