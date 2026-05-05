#!/usr/bin/env bash
set -euo pipefail

EVDEV_XML="/usr/share/X11/xkb/rules/evdev.xml"
XKB_SYMBOLS="/usr/share/X11/xkb/symbols/io"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if grep -q '<name>io</name>' "$EVDEV_XML"; then
    echo "[fail] layout 'io' already present in $EVDEV_XML, skipping."
else
    LAYOUT='    <layout>\n      <configItem>\n        <name>io<\/name>\n        <shortDescription>iosd<\/shortDescription>\n        <description>Interdictor custom layout<\/description>\n        <vendor>Interdictor<\/vendor>\n      <\/configItem>\n      <variantList\/>\n    <\/layout>'
    sudo sed -i "s|  </layoutList>|${LAYOUT}\n  </layoutList>|" "$EVDEV_XML"
    echo "Added layout 'io' to $EVDEV_XML."
fi

sudo cp "$SCRIPT_DIR/io" "$XKB_SYMBOLS"
echo "[success] copied io -> $XKB_SYMBOLS"
