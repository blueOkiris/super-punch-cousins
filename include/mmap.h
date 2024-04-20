// Defs for memory locations

#ifndef __MMAP_H__
#define __MMAP_H__

#include <stdint.h>

#define PPU_CTRL        *((uint8_t *) 0x2000)
#define PPU_MASK        *((uint8_t *) 0x2001)
#define PPU_STATUS      *((uint8_t *) 0x2002)
#define OAM_ADDR        *((uint8_t *) 0x2003)
#define OAM_DATA        *((uint8_t *) 0x2004)
#define PPU_SCROLL      *((uint8_t *) 0x2005)
#define PPU_ADDR        *((uint8_t *) 0x2006)
#define PPU_DATA        *((uint8_t *) 0x2007)

#define PPU_MEM_PALETTE_HI      0x3F

#endif

