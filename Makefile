ifeq ($(strip $(DEVKITARM)),)
$(error DEVKITARM is not set. Install devkitPro, or use the GitHub build in README.txt)
endif

include $(DEVKITARM)/3ds_rules

TARGET := ledcolor
ARCH   := -march=armv6k -mtune=mpcore -mfloat-abi=hard -mtp=soft
CFLAGS := -O2 -Wall -mword-relocations -ffunction-sections $(ARCH) -D__3DS__ -I$(CTRULIB)/include
LDFLAGS := -specs=3dsx.specs $(ARCH) -L$(CTRULIB)/lib

.PHONY: all clean
all: $(TARGET).3dsx

$(TARGET).elf: source/main.c
	$(CC) $(CFLAGS) $< $(LDFLAGS) -lctru -lm -o $@

$(TARGET).smdh:
	smdhtool --create "LED Color Studio" "Change your 3DS LED color" "Hudson" $(CTRULIB)/default_icon.png $@

$(TARGET).3dsx: $(TARGET).elf $(TARGET).smdh
	3dsxtool $< $@ --smdh=$(TARGET).smdh

clean:
	rm -f $(TARGET).elf $(TARGET).3dsx $(TARGET).smdh
