#!/bin/sh

SCRIPT_DIR="$( realpath --zero "${0}" | xargs --null dirname )"
RESOURCES_DIR="$( dirname "${SCRIPT_DIR}" )/resources"

cp "${RESOURCES_DIR}/0004000000126100.txt" ~/.var/app/org.citra_emu.citra/data/citra-emu/cheats/
