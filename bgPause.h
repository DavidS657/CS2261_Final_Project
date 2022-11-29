
//{{BLOCK(bgPause)

//======================================================================
//
//	bgPause, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 338 tiles (t reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 10816 + 2048 = 13376
//
//	Time-stamp: 2021-12-02, 20:41:05
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_BGPAUSE_H
#define GRIT_BGPAUSE_H

#define bgPauseTilesLen 10816
extern const unsigned short bgPauseTiles[5408];

#define bgPauseMapLen 2048
extern const unsigned short bgPauseMap[1024];

#define bgPausePalLen 512
extern const unsigned short bgPausePal[256];

#endif // GRIT_BGPAUSE_H

//}}BLOCK(bgPause)
