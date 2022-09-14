#!/usr/bin/env bash

DIR=$(dirname $(realpath "$0"))
cd $DIR
set -ex

rm -rf lib
rsync -av --include='*/' --include='*.js' --include='*.mjs' --exclude=* src/ lib/
bun run cep -- -c src -o lib
