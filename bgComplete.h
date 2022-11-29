
//{{BLOCK(bgComplete)

//======================================================================
//
//	bgComplete, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 91 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 2912 + 2048 = 5472
//
//	Time-stamp: 2021-12-06, 23:23:00
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_BGCOMPLETE_H
#define GRIT_BGCOMPLETE_H

#define bgCompleteTilesLen 2912
extern const unsigned short bgCompleteTiles[1456];

#define bgCompleteMapLen 2048
extern const unsigned short bgCompleteMap[1024];

#define bgCompletePalLen 512
extern const unsigned short bgCompletePal[256];

#endif // GRIT_BGCOMPLETE_H

//}}BLOCK(bgComplete)
