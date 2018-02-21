#!/bin/sh

set -e
cat setup_4.x | tr -d '\r' | bash
apt-get install -y --no-install-recommends nodejs
rm -rf /var/lib/apt/lists/*

