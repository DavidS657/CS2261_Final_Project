
//{{BLOCK(bgInstructions)

//======================================================================
//
//	bgInstructions, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 245 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 7840 + 2048 = 10400
//
//	Time-stamp: 2021-12-07, 15:59:39
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_BGINSTRUCTIONS_H
#define GRIT_BGINSTRUCTIONS_H

#define bgInstructionsTilesLen 7840
extern const unsigned short bgInstructionsTiles[3920];

#define bgInstructionsMapLen 2048
extern const unsigned short bgInstructionsMap[1024];

#define bgInstructionsPalLen 512
extern const unsigned short bgInstructionsPal[256];

#endif // GRIT_BGINSTRUCTIONS_H

//}}BLOCK(bgInstructions)
