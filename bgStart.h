
//{{BLOCK(bgStart)

//======================================================================
//
//	bgStart, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 163 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 5216 + 2048 = 7776
//
//	Time-stamp: 2021-12-02, 23:10:12
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_BGSTART_H
#define GRIT_BGSTART_H

#define bgStartTilesLen 5216
extern const unsigned short bgStartTiles[2608];

#define bgStartMapLen 2048
extern const unsigned short bgStartMap[1024];

#define bgStartPalLen 512
extern const unsigned short bgStartPal[256];

#endif // GRIT_BGSTART_H

//}}BLOCK(bgStart)
