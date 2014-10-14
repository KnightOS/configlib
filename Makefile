include .knightos/variables.make

INIT=/bin/fileman

ALL_TARGETS:=$(LIB)config $(INCLUDE)config.inc

$(LIB)config: config.asm
	mkdir -p $(LIB)
	$(AS) $(ASFLAGS) --listing $(OUT)config.list config.asm $(LIB)config

$(INCLUDE)config.inc: config.inc
	mkdir -p $(INCLUDE)
	cp config.inc $(INCLUDE)

include .knightos/sdk.make
