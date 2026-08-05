KEYMAP_NAME="josepablocb"

.PHONY: all
all:
	qmk compile -kb crkbd/rev1 -km $(KEYMAP_NAME) -c

.PHONY: clean
clean:
	qmk clean

.PHONY: flash
flash:
	qmk flash -kb crkbd/rev1 -km $(KEYMAP_NAME)

.PHONY: config
config:
	sh -c ./init.sh
