#!/usr/bin/env bash

set -e

TARBALL_DIR=tarball

if [ -d "$TARBALL_DIR" ]; then
    rm -rf "$TARBALL_DIR"
fi

mkdir -v "$TARBALL_DIR"
rsync -r \
    --exclude=dist \
    --exclude=*._esm \
    --exclude=testcases \
    --exclude=tests \
    --exclude=node_modules \
    --exclude=tmp \
    packages/providers/* "$TARBALL_DIR"
tar -czvf ethers_providers.tar.gz "$TARBALL_DIR"
