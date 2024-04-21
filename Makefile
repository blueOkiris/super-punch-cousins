# Build system for Super Punch Cousins

# Settings

## Project Settings

OBJNAME :=		super-punch-cousins
CFG :=			spc.cfg
ASSRC :=		$(wildcard src/*.s)
ASOBJS :=		$(subst .s,.o,$(subst src/,obj/,$(ASSRC)))
ASINC :=		$(wildcard include/*.s)
CSRC :=			$(wildcard src/*.c)
CGEN :=			$(subst .c,.s,$(subst src/,gen/,$(CSRC)))
COBJS :=		$(subst .c,.o,$(subst src/,obj/,$(CSRC)))
CINC :=			$(wildcard include/*.h)

## Compiler Settings

AS :=			ca65
ifdef DEBUG
ASFLAGS :=		--target nes -g
else
ASFLAGS :=		--target nes
endif
CC :=			cc65
ifdef DEBUG
CFLAGS :=		--target nes -g --add-source -Werror \
				-Iinclude
else
CFLAGS :=		--target nes -Oirs --add-source -Werror \
				-Iinclude
endif
LD :=			ld65
LDFLAGS :=		-C $(CFG)

# Targets

## Helpers

.PHONY: all
all: $(OBJNAME).nes

.PHONY: clean
clean:
	rm -rf obj/
	rm -rf gen/
	rm -rf *.nes
	rm -rf *.dbg

## Main

obj/%.o: src/%.s $(ASINC) $(CINC)
	mkdir -p obj
	$(AS) $(ASFLAGS) $< -o $@

gen/%.s: src/%.c $(CINC) $(ASINC)
	mkdir -p gen
	$(CC) $(CFLAGS) $< -o $@

obj/%.o: gen/%.s
	mkdir -p obj
	$(AS) $(ASFLAGS) $< -o $@

ifdef DEBUG
$(OBJNAME).nes: $(ASOBJS) $(COBJS) $(CFG)
	$(LD) $(LDFLAGS) $(ASOBJS) $(COBJS) -o $@ nes.lib --dbgfile $(OBJNAME).dbg
else
$(OBJNAME).nes: $(ASOBJS) $(COBJS) $(CFG)
	$(LD) $(LDFLAGS) $(ASOBJS) $(COBJS) -o $@ nes.lib
endif

