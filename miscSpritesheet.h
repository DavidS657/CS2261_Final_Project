
//{{BLOCK(miscSpritesheet)

//======================================================================
//
//	miscSpritesheet, 512x256@4, 
//	+ palette 256 entries, not compressed
//	+ 2048 tiles not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 512 + 65536 + 4096 = 70144
//
//	Time-stamp: 2021-11-23, 23:52:32
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_MISCSPRITESHEET_H
#define GRIT_MISCSPRITESHEET_H

#define miscSpritesheetTilesLen 65536
extern const unsigned short miscSpritesheetTiles[32768];

#define miscSpritesheetMapLen 4096
extern const unsigned short miscSpritesheetMap[2048];

#define miscSpritesheetPalLen 512
extern const unsigned short miscSpritesheetPal[256];

#endif // GRIT_MISCSPRITESHEET_H

//}}BLOCK(miscSpritesheet)
