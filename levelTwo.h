
//{{BLOCK(levelTwo)

//======================================================================
//
//	levelTwo, 512x256@4, 
//	+ palette 256 entries, not compressed
//	+ 348 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 512 + 11136 + 4096 = 15744
//
//	Time-stamp: 2021-12-06, 09:59:51
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_LEVELTWO_H
#define GRIT_LEVELTWO_H

#define levelTwoTilesLen 11136
extern const unsigned short levelTwoTiles[5568];

#define levelTwoMapLen 4096
extern const unsigned short levelTwoMap[2048];

#define levelTwoPalLen 512
extern const unsigned short levelTwoPal[256];

#endif // GRIT_LEVELTWO_H

//}}BLOCK(levelTwo)
