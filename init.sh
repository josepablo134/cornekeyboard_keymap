#! /bin/sh

KEYMAP_NAME="josepablocb"
KEYMAP_HOME="$(pwd)"

if [[ -z "$QMK_HOME" ]]; then
	QMK_HOME=$(eval echo "~/qmk_firmware")
fi

echo QMK_HOME=${QMK_HOME}
echo KEYMAP_NAME=${KEYMAP_NAME}
echo KEYMAP_HOME=${KEYMAP_HOME}

ln -s ${KEYMAP_HOME}/${KEYMAP_NAME} ${QMK_HOME}/keyboards/crkbd/keymaps/${KEYMAP_NAME}
