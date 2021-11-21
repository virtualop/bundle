#!/bin/bash

VOP_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )

cd $VOP_DIR
export VOP_ORIGIN="sidekiq"
bundle exec sidekiq -r ../vop/lib/boot.rb

cd - >/dev/null
