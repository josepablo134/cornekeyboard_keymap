KEYMAP_NAME="josepablocb"

.PHONY: all
all: configure
	qmk compile -kb crkbd/rev1 -km $(KEYMAP_NAME) -c

.PHONY: flash
flash: configure all
	qmk flash -kb crkbd/rev1 -km $(KEYMAP_NAME)

.PHONY: configure
config:
	bash -s ./init.sh
