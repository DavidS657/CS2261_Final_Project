
//{{BLOCK(bgWin)

//======================================================================
//
//	bgWin, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 103 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 3296 + 2048 = 5856
//
//	Time-stamp: 2021-12-06, 23:25:23
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_BGWIN_H
#define GRIT_BGWIN_H

#define bgWinTilesLen 3296
extern const unsigned short bgWinTiles[1648];

#define bgWinMapLen 2048
extern const unsigned short bgWinMap[1024];

#define bgWinPalLen 512
extern const unsigned short bgWinPal[256];

#endif // GRIT_BGWIN_H

//}}BLOCK(bgWin)
