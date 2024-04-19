# Build system for Super Punch Cousins

# Settings

## Project Settings

OBJNAME :=		super-punch-cousins
CFG :=			spc.cfg
ASSRC :=		$(wildcard src/*.s)
ASOBJS :=		$(subst .s,.o,$(subst src/,obj/,$(ASSRC)))
ASINC :=		src/mmap.s

## Compiler Settings

AS :=			ca65
ASFLAGS :=		--verbose --target nes
LD :=			cl65
LDFLAGS :=		--verbose --target nes -C $(CFG)

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

obj/%.o: src/%.s $(ASINC)
	mkdir -p obj
	$(AS) $(ASFLAGS) $< -o $@

$(OBJNAME).nes: $(ASOBJS)
	$(LD) $(LDFLAGS) $^ -o $@

