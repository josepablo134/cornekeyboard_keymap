#! /bin/sh

KEYMAP_NAME="josepablocb"
KEYMAP_HOME="$(pwd)"

if [[ -z "$QMK_HOME" ]]; then
	QMK_HOME="~/qmk_firmware"
fi

ln -s -T $KEYMAP_HOME/$KEYMAP_NAME $QMK_HOME/keyboards/crkbd/keymaps/$KEYMAP_NAME
