#!/usr/bin/env bash

set -e

TARBALL_DIR=tarball

if [ -d "$TARBALL_DIR" ]; then
    rm -rf "$TARBALL_DIR"
fi

mkdir -v "$TARBALL_DIR"
mkdir -v "$TARBALL_DIR/lib"
rsync -r \
    --exclude=dist \
    --exclude=*._esm \
    --exclude=testcases \
    --exclude=tests \
    --exclude=node_modules \
    --exclude=tmp \
    packages/ "$TARBALL_DIR"
cp packages/ethers/package.json "$TARBALL_DIR"
cp ethers_index.js "$TARBALL_DIR/lib/index.js"
tar -czvf ethers.tar.gz "$TARBALL_DIR"
