# Build system for Super Punch Cousins

# Settings

## Project Settings

OBJNAME :=		super-punch-cousins
CFG :=			spc.cfg
SRC :=			$(wildcard src/*.s)

## Compiler Settings

LD :=			cl65
LDFLAGS :=		--verbose --target nes

# Targets

## Helpers

.PHONY: all
all: $(OBJNAME).nes

.PHONY: clean
clean:
	rm -rf src/*.o
	rm -rf *.nes
	rm -rf *.dbg

## Main

$(OBJNAME).nes: $(SRC)
	$(LD) $(LDFLAGS) -C $(CFG) $^ -o $@

