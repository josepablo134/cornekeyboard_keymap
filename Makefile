KEYMAP_NAME="josepablocb"

.PHONY: all
all:
	qmk compile -kb crkbd/rev1 -km $(KEYMAP_NAME) -c

.PHONY: flash
flash: all
	qmk flash -kb crkbd/rev1 -km $(KEYMAP_NAME)

.PHONY: config
config:
	sh -c ./init.sh
