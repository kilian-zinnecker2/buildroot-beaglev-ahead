#!/usr/bin/env bash
set -e

cp board/beaglev-ahead/uEnv.txt ${BINARIES_DIR}/
support/scripts/genimage.sh -c board/beaglev-ahead/genimage.cfg
