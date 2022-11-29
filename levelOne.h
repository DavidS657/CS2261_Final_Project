
//{{BLOCK(levelOne)

//======================================================================
//
//	levelOne, 512x256@4, 
//	+ palette 256 entries, not compressed
//	+ 148 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 512 + 4736 + 4096 = 9344
//
//	Time-stamp: 2021-12-06, 12:56:22
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_LEVELONE_H
#define GRIT_LEVELONE_H

#define levelOneTilesLen 4736
extern const unsigned short levelOneTiles[2368];

#define levelOneMapLen 4096
extern const unsigned short levelOneMap[2048];

#define levelOnePalLen 512
extern const unsigned short levelOnePal[256];

#endif // GRIT_LEVELONE_H

//}}BLOCK(levelOne)
