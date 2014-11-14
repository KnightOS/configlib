include .knightos/variables.make

INIT=/bin/fileman

ALL_TARGETS:=$(LIB)config $(INCLUDE)config.inc

$(LIB)config: config.asm
	mkdir -p $(LIB)
	$(AS) $(ASFLAGS) --listing $(OUT)config.list config.asm $(LIB)config

$(INC)config.inc: config.inc
	mkdir -p $(INC)
	cp config.inc $(INC)

include .knightos/sdk.make
