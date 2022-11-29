/*
Welcome, to Blast n Slash!

HOW TO PLAY-
UP/ DOWN - CLIMB/DESCEND LADDER
L / R - TOGGLE WEAPON
A - FIRE BLASTER / SWING SABER
B - JUMP / FALL OFF LADDER
DOWN + B - SLIDE
START - PAUSE GAME

CHEAT-
DOWN + L + R - PROTO MODE (GAIN A SHIELD & STRONGER BULLETS WHICH PIERCE ENEMY ARMOR!!!)

Tips-
- Sliding lets you get under areas you otherwise couldn't
- The player's bullets go through walls
- Enemies don't respawn when you die
- Saber swings go through enemy armor, and are an insta kill
- Try to wait until an enemy is vulnerable to attack before rushing in
- Some enemies will open their guard before firing
- Some enemies can be shot from behind and injured, even if they are guarding!
*/

#include <stdlib.h>
#include <stdio.h>
#include "math.h"
#include "myLib.h"
#include "playerBlastSpritesheet.h"
#include "bgLose.h"
#include "bgPause.h"
#include "bgStart.h"
#include "bgWin.h"
#include "game.h"
#include "bgInstructions.h"
#include "pauseSong.h"
#include "sound.h"
#include "restSong.h"
#include "loseSong.h"
#include "startSong.h"
#include "winSong.h"
#include "gameSong.h"
#include "parallaxSky.h"
#include "levelOne.h"
#include "levelTwo.h"
#include "bgComplete.h"
#include "levelThree.h"
#include "levelFour.h"
#include "levelFive.h"

// prototypes 
void initialize();
void goToGame();
void game();
void goToLose();
void lose();
void goToPause();
void pause();
void goToStart();
void start();
void goToWin();
void win();
void goToInstructions();
void instructions();
void goToComplete();
void complete();


// Random seed
int seed;

// States
enum {START, INSTRUCTION, GAME, PAUSE, COMPLETE, WIN,  LOSE};
int state;

//Checks
int comingFromInstructions;
// objects
OBJ_ATTR shadowOAM[128];

// Button Variables
unsigned short buttons;
unsigned short oldButtons;


int main()
{
    initialize();

    while (1)
    {
        // Update button variables
        oldButtons = buttons;
        buttons = BUTTONS;

          // State Machine
        switch(state) {
            
            case START:
                start();
                break;
            case INSTRUCTION:
                instructions();
                break;
            case GAME:
                game();
                break;
            case PAUSE:
                pause();
                break;
            case COMPLETE:
                complete();
                break;
            case WIN:
                win();
                break;
            case LOSE:
                lose();
                break;
            
        }
               
    }
}

// Sets up GBA
void initialize()
{

    // enable backgrounds and sprites
    REG_DISPCTL = MODE0 | BG0_ENABLE | BG1_ENABLE | SPRITE_ENABLE;
    REG_BG1CNT = BG_4BPP | BG_SIZE_WIDE | BG_CHARBLOCK(1) | BG_SCREENBLOCK(30);
    REG_BG0CNT = BG_SIZE_WIDE | BG_SCREENBLOCK(28) | BG_CHARBLOCK(2) | BG_4BPP;

    //Setting up music and interrupts
    setupSounds();
    setupInterrupts();
    goToStart();
}

void goToStart() {
    REG_BG0VOFF = 0;
    REG_BG0HOFF = 0;
    REG_BG1VOFF = 0;
    REG_BG1HOFF = 0;
    // Resets to level 1 each time the player goes back to start
    levelsCleared = 0;
    usedCheat = 0;

    waitForVBlank();
    hideSprites();
    DMANow(3, shadowOAM, OAM, 128 * 4);
    DMANow(3, bgStartPal, PALETTE, bgStartPalLen/2);
    DMANow(3, bgStartTiles, &CHARBLOCK[1], bgStartTilesLen / 2);
    DMANow(3, bgStartMap, &SCREENBLOCK[30], bgStartMapLen / 2);
    DMANow(3, bgStartTiles, &CHARBLOCK[2], bgStartTilesLen / 2);
    DMANow(3, bgStartMap, &SCREENBLOCK[28], bgStartMapLen / 2);

    seed = 0;
    // Logic which prevents the music from restarting if the player switches from the instruction state back to start
    if (comingFromInstructions == 0) {
        stopSound();  
	    playSoundA(startSong_data, startSong_length, 1);
    } 
    state = START;


}

void start() {
    seed++;
    if(BUTTON_PRESSED(BUTTON_START)) {
        srand(seed);

        
        goToGame();
        initGame();
    }
    if(BUTTON_PRESSED(BUTTON_SELECT)) {
        goToInstructions();
    }
}

// Sets up the game state
void goToGame() {

    // bg pallette
    if(levelsCleared == 0) {
        DMANow(3, levelOnePal, PALETTE, levelOnePalLen / 2);
    }
    if(levelsCleared == 1) {
        DMANow(3, levelTwoPal, PALETTE, levelTwoPalLen / 2);
    }
    if(levelsCleared == 2) {
        DMANow(3, levelThreePal, PALETTE, levelThreePalLen / 2);
    }
    if(levelsCleared == 3) {
        DMANow(3, levelFourPal, PALETTE, levelFourPalLen / 2);
    }
    if(levelsCleared == 4) {
        DMANow(3, levelFivePal, PALETTE, levelFivePalLen / 2);
    }

    // background 1 

    DMANow(3, parallaxSkyTiles, &CHARBLOCK[1], parallaxSkyTilesLen / 2);
	DMANow(3, parallaxSkyMap, &SCREENBLOCK[30], parallaxSkyMapLen / 2);

    // background 0/ Logic for when player progresses to next level
    if(levelsCleared == 0) {
        DMANow(3, levelOneTiles, &CHARBLOCK[2], levelOneTilesLen / 2);
	    DMANow(3, levelOneMap, &SCREENBLOCK[28], levelOneMapLen / 2);
    }
    if(levelsCleared == 1) {
        DMANow(3, levelTwoTiles, &CHARBLOCK[2], levelTwoTilesLen / 2);
	    DMANow(3, levelTwoMap, &SCREENBLOCK[28], levelTwoMapLen / 2);
    }
    if(levelsCleared == 2) {
        DMANow(3, levelThreeTiles, &CHARBLOCK[2], levelThreeTilesLen / 2);
	    DMANow(3, levelThreeMap, &SCREENBLOCK[28], levelThreeMapLen / 2);
    }
    if(levelsCleared == 3) {
        DMANow(3, levelFourTiles, &CHARBLOCK[2], levelFourTilesLen / 2);
	    DMANow(3, levelFourMap, &SCREENBLOCK[28], levelFourMapLen / 2);
    }
    if(levelsCleared == 4) {
        DMANow(3, levelFiveTiles, &CHARBLOCK[2], levelFiveTilesLen / 2);
	    DMANow(3, levelFiveMap, &SCREENBLOCK[28], levelFiveMapLen / 2);
    }



    // spritesheet
    DMANow(3, playerBlastSpritesheetTiles, &CHARBLOCK[4], playerBlastSpritesheetTilesLen / 2);
    DMANow(3, playerBlastSpritesheetPal, SPRITEPALETTE, playerBlastSpritesheetPalLen / 2);

    // DMAing
    hideSprites();
    DMANow(3, shadowOAM, OAM, 128 * 4);

    // Song setup
    stopSound();
    playSoundA(gameSong_data, gameSong_length, 1);


    REG_BG0VOFF = vOff;
    REG_BG0HOFF = hOff;

    state = GAME;
}

// Runs every frame of the game state
void game() {
    updateGame();
    drawGame();
    if(BUTTON_PRESSED(BUTTON_START) && winTimer >= 300 && cheatTimer <= 0 && deathTimer <= 0 && deathTranTimer <= -10) {
        goToPause();
    }
    if (playerLives <= 0 && deathTimer <= 0 && deathTranTimer <= -10) 
        goToLose();

    // Level is cleared when all enemies are defeated, if it was the final level,
    // then the game is won, otherwise the game goes to a different transition state
    if (enemyCount <= 0 && winTimer <= 0) {
        levelsCleared++;
        if(levelsCleared == 5) {
             goToWin();
        }
        else {
            goToComplete();
        }
       
 
    }
}
void goToPause() {
    REG_BG0VOFF = 0;
    REG_BG0HOFF = 0;
    REG_BG1VOFF = 0;
    REG_BG1HOFF = 0;
    comingFromInstructions = 0;
    waitForVBlank();
    hideSprites();

    DMANow(3, shadowOAM, OAM, (4*128));
    DMANow(3, bgPausePal, PALETTE, bgPausePalLen/2 );
    DMANow(3, bgPauseTiles, &CHARBLOCK[1], bgPauseTilesLen/2);
    DMANow(3, bgPauseMap, &SCREENBLOCK[30], bgPauseMapLen/2);
    DMANow(3, bgPauseTiles, &CHARBLOCK[2], bgPauseTilesLen/2);
    DMANow(3, bgPauseMap, &SCREENBLOCK[28], bgPauseMapLen/2);

    stopSound();
    playSoundA(restSong_data,restSong_length, 1);

    state = PAUSE;
}

void pause() {
    waitForVBlank();
    
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToGame();
    }
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToStart();
    }
}
void goToLose() {
    waitForVBlank();
    hideSprites();
    comingFromInstructions = 0;
    REG_BG0VOFF = 0;
    REG_BG0HOFF = 0;
    REG_BG1VOFF = 0;
    REG_BG1HOFF = 0;
    DMANow(3, shadowOAM, OAM, (4*128));
    DMANow(3, bgLosePal, PALETTE, 256 );
    DMANow(3, bgLoseTiles, &CHARBLOCK[1], bgLoseTilesLen/2);
    DMANow(3, bgLoseMap, &SCREENBLOCK[30], bgLoseMapLen/2);
    DMANow(3, bgLoseTiles, &CHARBLOCK[2], bgLoseTilesLen/2);
    DMANow(3, bgLoseMap, &SCREENBLOCK[28], bgLoseMapLen/2);

    stopSound();
    playSoundA(loseSong_data,loseSong_length,1);

    state = LOSE; 
}

void lose() {
    waitForVBlank();

    if (BUTTON_PRESSED(BUTTON_START))
        goToStart();
}

// Transition state used inbetween game levels, lets player continue or start over from beginning
void goToComplete() {

    waitForVBlank();
    comingFromInstructions = 0;
    hideSprites();
   

    REG_BG0VOFF = 0;
    REG_BG0HOFF = 0;
    REG_BG1VOFF = 0;
    REG_BG1HOFF = 0;
    DMANow(3, shadowOAM, OAM, (4*128));
    DMANow(3, bgCompletePal, PALETTE, 256 );
    DMANow(3, bgCompleteTiles, &CHARBLOCK[1], bgCompleteTilesLen/2);
    DMANow(3, bgCompleteMap, &SCREENBLOCK[30], bgCompleteMapLen/2);
    DMANow(3, bgCompleteTiles, &CHARBLOCK[2], bgCompleteTilesLen/2);
    DMANow(3, bgCompleteMap, &SCREENBLOCK[28], bgCompleteMapLen/2);
    stopSound();
    playSoundA(pauseSong_data,pauseSong_length,1);

    state = COMPLETE;
}

void complete() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_SELECT))
        goToStart();
    if(BUTTON_PRESSED(BUTTON_START)) {
        initGame();
        goToGame();
    }
    
}
void goToWin() {

    waitForVBlank();
    comingFromInstructions = 0;
    hideSprites();
   

    REG_BG0VOFF = 0;
    REG_BG0HOFF = 0;
    REG_BG1VOFF = 0;
    REG_BG1HOFF = 0;
    shadowOAM[1].attr0 = (100) | ATTR0_SQUARE;
    shadowOAM[1].attr1 = (136) | ATTR1_TINY;
    if(playerLives < 3) {
        shadowOAM[1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(18, 29);
    }
    else if(playerLives == 3) {
        shadowOAM[1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(17, 29);
    }
    else if(playerLives > 3 && usedCheat == 0) {
        shadowOAM[1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(18, 30);
    } else if (playerLives > 3) {
        shadowOAM[1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(16, 29);
    }
    DMANow(3, shadowOAM, OAM, (4*128));
    DMANow(3, bgWinPal, PALETTE, 256 );
    DMANow(3, bgWinTiles, &CHARBLOCK[1], bgWinTilesLen/2);
    DMANow(3, bgWinMap, &SCREENBLOCK[30], bgWinMapLen/2);
    DMANow(3, bgWinTiles, &CHARBLOCK[2], bgWinTilesLen/2);
    DMANow(3, bgWinMap, &SCREENBLOCK[28], bgWinMapLen/2);
    
    
    
    stopSound();
    playSoundA(startSong_data,startSong_length,1);

    state = WIN;
}

void win() {
    waitForVBlank();
    
    if (BUTTON_PRESSED(BUTTON_START))
        goToStart();
}

void goToInstructions() {
    waitForVBlank();
    hideSprites();
    REG_BG0VOFF = 0;
    REG_BG0HOFF = 0;
    REG_BG1VOFF = 0;
    REG_BG1HOFF = 0;
    DMANow(3, shadowOAM, OAM, (4*128));
    DMANow(3, bgInstructionsPal, PALETTE, 256 );
    DMANow(3, bgInstructionsTiles, &CHARBLOCK[1], bgInstructionsTilesLen/2);
    DMANow(3, bgInstructionsMap, &SCREENBLOCK[30], bgInstructionsMapLen/2);
    DMANow(3, bgInstructionsTiles, &CHARBLOCK[2], bgInstructionsTilesLen/2);
    DMANow(3, bgInstructionsMap, &SCREENBLOCK[28], bgInstructionsMapLen/2);

    state = INSTRUCTION;
}

void instructions(){
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        comingFromInstructions = 1;
        goToStart();     
    }
}

// Setups/ Enables interrupts
void setupInterrupts() {

	REG_IME = 0;

    REG_IE |= INT_VBLANK;
    REG_DISPSTAT |= INT_VBLANK_ENABLE;

    REG_INTERRUPT = interruptHandler;
	REG_IME = 1;
}

// Handles interrupts when they occur
void interruptHandler() {

	REG_IME = 0;

	if(REG_IF & INT_VBLANK) {
        if (soundA.isPlaying) {

            soundA.vBlankCount = soundA.vBlankCount + 1;
            if (soundA.vBlankCount > soundA.duration) {
                if (soundA.loops) {
                    playSoundA(soundA.data, soundA.length, soundA.loops);
                } else {
                    soundA.isPlaying = 0;
                    dma[1].cnt = 0;
                    REG_TM0CNT = TIMER_OFF;
                }
            }
        }

        if (soundB.isPlaying) {

            soundB.vBlankCount = soundB.vBlankCount + 1;
            if (soundB.vBlankCount > soundB.duration) {
                if (soundB.loops) {
                    playSoundB(soundB.data, soundB.length, soundB.loops);
                } else {
                    soundB.isPlaying = 0;
                    dma[2].cnt = 0;
                    REG_TM1CNT = TIMER_OFF;
                }
            }
		}


		REG_IF = INT_VBLANK;
	}
	REG_IME = 1;
}