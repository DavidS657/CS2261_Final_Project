#include <stdlib.h>
#include <stdio.h>
#include "myLib.h"
#include <math.h>
#include "game.h"
#include "sound.h"
#include "laddercollision.h"
#include "busterSound.h"
#include "switchBlaster.h"
#include "slashSound.h"
#include "hurtSound.h"
#include "enemyDinked.h"
#include "enemyHit.h"
#include "healthPickup.h"
#include "deathSound.h"
#include "protoMode.h"
#include "gameSong.h"
#include "winSong.h"
#include "levelOneCollision.h"
#include "levelTwoCollision.h"
#include "levelTwoLadderCollision.h"
#include "levelThreeCollision.h"
#include "levelThreeLadderCollision.h"
#include "levelFourCollision.h"
#include "levelFourLadderCollision.h"
#include "levelFiveCollision.h"
#include "levelFiveLadderCollision.h"
#include "lifeSound.h"



//variables
int hOff;
int vOff;
int playerHealth;
int playerLives;
int toggleTimer;
int iFramesTimer;
int enemyCount;

//A bunch of variables used to make player animation smoother/functional
int ladderSpriteCheck;
int isFalling;
int reverseSpriteCheck;
int jumpAniCooldown;
int wasAirSlash;

// Timer to pause the game until the ready text dissapears
int readyTimer;
// Timer to pause the game until the cheat jingle is over
int cheatTimer;
int cheatTimerCheck;
//Timer to pause the game when the player dies
int deathTimer;
int deathCheck;
int deathTranTimer;
int deathSoundCheck;

// Used to keep track of how many things are in shadowOAM
int shadowOAMIndex;

// Used to keep track of levels played so they can be swapped out
int levelsCleared;

// Variable used to keep track of if the player used the cheat, affects the ranking player gets at end of game
int usedCheat;


// Counts for each of the game objects, changes depending on the level being played
int livesCount;
int largePickupsCount;
int smallPickupsCount;
int sniperJoeCount;
int joeBulletCount;
int moleGuyCount;
int moleBulletCount;
int horiOctoEyeCount;
int vertOctoEyeCount;
int readyFrameOverride;
int winTimer;
int winCheck;
int winSoundCheck;




//structs
PLAYER player;
ANISPRITE health[HEALTHCOUNT];
ANISPRITE text[CHARCOUNT];
ANISPRITE lives[MAXOBJECTCOUNT];
ANISPRITE smallHealthPickup[MAXOBJECTCOUNT];
ANISPRITE largeHealthPickup[MAXOBJECTCOUNT];
ANISPRITE playerBullets[PLAYERBULLETCOUNT];
ANISPRITE moleGuys[MAXOBJECTCOUNT];
ANISPRITE moleBullets[MAXBULLETCOUNT];
ANISPRITE sniperJoes[MAXOBJECTCOUNT];
ANISPRITE joeBullets[MAXBULLETCOUNT];
ANISPRITE horiOctoEyes[MAXOBJECTCOUNT];
ANISPRITE vertOctoEyes[MAXOBJECTCOUNT];
ANISPRITE ready[READYCHARCOUNT];
ANISPRITE protoBullets[PROTOBULLETCOUNT];
ANISPRITE hurt;
ANISPRITE protoShield;


// collision map
unsigned char * collisionMap;
unsigned char * ladderCollision;

// Initializes the game
void initGame() {
    // Workaround so that sprites can correctly load in before the game is paused to display the ready
    readyFrameOverride = 0;
    initWin();
    for(int i = 0; i < MAXOBJECTCOUNT;i++) {
        sniperJoes[i].hide = 1;
        moleGuys[i].hide = 1;
        vertOctoEyes[i].hide = 1;
        horiOctoEyes[i].hide = 1;
    }
    for(int i = 0; i < MAXBULLETCOUNT; i++) {
        joeBullets[i].hide = 1;
        moleBullets[i].hide = 1;
    }

    // Logic for level progression
    if (levelsCleared == 0) {
        vOff = 0;
        hOff = 0;
        collisionMap = (unsigned char *) levelOneCollisionBitmap;
        ladderCollision = (unsigned char *) laddercollisionBitmap;
        cheatTimerCheck = 0;
        cheatTimer = 0;
        playerHealth = 20;
        playerLives = 3;
        toggleTimer = 60;
        iFramesTimer = 90;
        reverseSpriteCheck = 0;
        ladderSpriteCheck = 0;
        jumpAniCooldown = 10;
        wasAirSlash = 0;
        
        enemyCount = 6;

        livesCount = 1;
        largePickupsCount = 1;
        smallPickupsCount = 2;
        sniperJoeCount = 0;
        joeBulletCount = 0;
        moleGuyCount = 0;
        moleBulletCount = 0;
        horiOctoEyeCount = 6;
        vertOctoEyeCount = 0;
        
    }
    if(levelsCleared == 1) {
            
        collisionMap = (unsigned char *) levelTwoCollisionBitmap;
        ladderCollision = (unsigned char *) levelTwoLadderCollisionBitmap;
        cheatTimerCheck = 0;
        cheatTimer = 0;
        playerHealth = 20;
        toggleTimer = 60;
        iFramesTimer = 90;
        reverseSpriteCheck = 0;
        ladderSpriteCheck = 0;
        jumpAniCooldown = 10;
        wasAirSlash = 0;

        enemyCount = 10;

        livesCount = 1;
        largePickupsCount = 1;
        smallPickupsCount = 2;
        sniperJoeCount = 0;
        joeBulletCount = 0;
        moleGuyCount = 0;
        moleBulletCount = 0;
        horiOctoEyeCount = 0;
        vertOctoEyeCount = 10;
    }
    if(levelsCleared == 2) {
        vOff = 0;
        hOff = 0;
        collisionMap = (unsigned char *) levelThreeCollisionBitmap;
        ladderCollision = (unsigned char *) levelThreeLadderCollisionBitmap;
        cheatTimerCheck = 0;
        cheatTimer = 0;
        playerHealth = 20;
        toggleTimer = 60;
        iFramesTimer = 90;
        reverseSpriteCheck = 0;
        ladderSpriteCheck = 0;
        jumpAniCooldown = 10;
        wasAirSlash = 0;

        enemyCount = 10;
        
        livesCount = 1;
        largePickupsCount = 1;
        smallPickupsCount = 3;
        sniperJoeCount = 0;
        joeBulletCount = 0;
        moleGuyCount = 10;
        moleBulletCount = 20;
        horiOctoEyeCount = 0;
        vertOctoEyeCount = 0;
    }
    if(levelsCleared == 3) {
        vOff = 0;
        hOff = 0;
        collisionMap = (unsigned char *) levelFourCollisionBitmap;
        ladderCollision = (unsigned char *) levelFourLadderCollisionBitmap;
        cheatTimerCheck = 0;
        cheatTimer = 0;
        playerHealth = 20;
        toggleTimer = 60;
        iFramesTimer = 90;
        reverseSpriteCheck = 0;
        ladderSpriteCheck = 0;
        jumpAniCooldown = 10;
        wasAirSlash = 0;
        enemyCount = 9;
        
        livesCount = 1;
        largePickupsCount = 1;
        smallPickupsCount = 2;
        sniperJoeCount = 9;
        joeBulletCount = 20;
        moleGuyCount = 0;
        moleBulletCount = 0;
        horiOctoEyeCount = 0;
        vertOctoEyeCount = 0;
    }

    if (levelsCleared == 4) {
        vOff = 0;
        hOff = 0;
        collisionMap = (unsigned char *) levelFiveCollisionBitmap;
        ladderCollision = (unsigned char *) levelFiveLadderCollisionBitmap;
        cheatTimerCheck = 0;
        cheatTimer = 0;
        playerHealth = 20;
        toggleTimer = 60;
        iFramesTimer = 90;
        reverseSpriteCheck = 0;
        ladderSpriteCheck = 0;
        jumpAniCooldown = 10;
        wasAirSlash = 0;

        enemyCount = 19;

        livesCount = 1;
        largePickupsCount = 2;
        smallPickupsCount = 4;
        sniperJoeCount = 4;
        joeBulletCount = 12;
        moleGuyCount = 4;
        moleBulletCount = 12;
        horiOctoEyeCount = 6;
        vertOctoEyeCount = 5;     
    }
    initReady();
    initHurt();
    initGamePlayer();
    initHealth();
    initText();
    initLives();
    initSmallHealthPickups();
    initLargeHealthPickups();
    initPlayerBullets();
    initProtoBullets();
    initMoleGuys();
    initMoleBullets();
    initHoriOctoEyes();
    initVertOctoEyes();
    initSniperJoes();
    initJoeBullets();
    initProtoShield();
}

// Handle every-frame actions of the game
void updateGame() {
    updateReady();
    updateWin();
    if(ready[1].hide) {
         updateCheat();
    }
    updateDeath();
    if((ready[1].hide && cheatTimer <= 0 && winCheck == 0) || readyFrameOverride < 1 ) {
        updatePlayer();
        updateHurt();
        for(int i = 0; i < PLAYERBULLETCOUNT; i++) {
            updatePlayerBullet(&playerBullets[i]);
        }
        for(int i = 0; i < PROTOBULLETCOUNT; i++) {
            updateProtoBullet(&protoBullets[i]);
        }
        for(int i = 0; i < horiOctoEyeCount; i++) {
            updateHoriOctoEye(&horiOctoEyes[i]);
        }
        for(int i = 0; i < vertOctoEyeCount; i++) {
            updateVertOctoEye(&vertOctoEyes[i]);
        }
        animateHoriEyes();
        animateVertEyes();
        for (int i = 0; i < moleGuyCount; i++) {
            updateMoleGuy(&moleGuys[i]);
        }
        for(int i = 0; i < moleBulletCount; i++) {
            updateMoleBullet(&moleBullets[i]);
        }
        for (int i = 0; i < sniperJoeCount; i++) {
            updateSniperJoe(&sniperJoes[i]);
        }
        for(int i = 0; i < joeBulletCount; i++) {
            updateJoeBullet(&joeBullets[i]);
        }
        updateProtoShield();
        animatePickups();
        animateSniperJoes();
    }
    readyFrameOverride++;
}

// Draws all the game sprites
void drawGame() {
    shadowOAMIndex = 0;
    drawHealth();
    drawHurt();
    
    drawReady();
    drawText();
    drawSmallHealthPickups();
    drawLargeHealthPickups();
    drawSniperJoes();
    drawPlayer();

    drawLives();

    drawPlayerBullets();
    drawProtoBullets();
    drawHoriOctoEyes();
    drawVertOctoEyes();
    
    
    drawMoleGuys();
    drawMoleBullets();
    
    
    drawJoeBullets();
    
    drawProtoShield();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);

    REG_BG0HOFF = hOff;
    REG_BG1HOFF = hOff/2;
}

// initializes player
void initGamePlayer() {
    
    vOff = 0;
    hOff = 0;

    player.width = 24;
    player.height = 24;
    player.rdel = 1;
    player.cdel = 1;
    player.worldRow = 104;
    player.worldCol = 40;
    player.aniCounter = 0;
    player.curFrame = 0;
    player.numFrames = 3;
    player.aniState = 0;
    player.slide = 0;
    player.slideTimer = 0;
    player.onLadder = 0;
    player.hurt = 0;
    player.hurtTimer = 0;
    player.bulletTimer = 30;
    player.hide = 0;

    player.slash = 0;
    player.slashTimer = 60;
    // 1 signifies that player is facing right
    player.direction = 1;
    // 1 signifies that player is using the gun
    player.form = 1;
}

void updatePlayer() {
    if(player.hide == 0 && deathCheck != 1) {

        // prevents player from being able to jump while in air (double jumping, triple jumping, etc)
        int canJump = 1;
        // checking BELOW if player can move, applying gravity and accounting for velocity
        if (player.slide == 0 && player.onLadder == 0) {
            if (collisionMap[OFFSET(player.worldCol, player.worldRow + player.height + player.rdel - 1  
                - (int) round(player.velocity * GRAVITYFACTOR), MAPWIDTH)]
            && collisionMap[OFFSET(player.worldCol + player.width - 10,  player.worldRow + player.height + player.rdel - 1 
                - (int) round(player.velocity * GRAVITYFACTOR), MAPWIDTH)]
            && collisionMap[OFFSET(player.worldCol + player.width/2,  player.worldRow + player.height + player.rdel - 1 
                - (int) round(player.velocity * GRAVITYFACTOR), MAPWIDTH)]) {

                // using acceleration to update the players velocity
                player.velocity = (int) player.velocity + (GRAVITY * GRAVITYFACTOR);

                // prevents player from being able to multi jump (don't use if this is intended behavior)
                canJump = 0;
                isFalling = 1;
                
                // applies current velocity to players position -- implement complex movement vertically if needed
                // gravity factor sets your gravity strength, i use something like 0.1
                player.worldRow = (int) player.worldRow - round(player.velocity * GRAVITYFACTOR);

            } else {
                player.velocity = 0; // grounds player if player is on ground
                canJump = 1;
                isFalling = 0;        // allows player to jump        
            }
        } else {
            isFalling = 0;
        }
        // checking BELOW if player can move, applying gravity and accounting for velocity
        if (player.slide != 0 && player.onLadder == 0) { // Janky logic so that the player doesn't clip through the floor when transitioning from slide back to standard state
            if (collisionMap[OFFSET(player.worldCol, player.worldRow + player.height + player.rdel + 7  
                - (int) round(player.velocity * GRAVITYFACTOR), MAPWIDTH)]
            && collisionMap[OFFSET(player.worldCol + player.width - 10,  player.worldRow + player.height + player.rdel + 7 
                - (int) round(player.velocity * GRAVITYFACTOR), MAPWIDTH)])  {

                // using acceleration to update the players velocity
                player.velocity = (int) player.velocity + (GRAVITY * GRAVITYFACTOR);
                player.slide = 0;

                // prevents player from being able to multi jump (don't use if this is intended behavior)
                canJump = 0;
                
                // applies current velocity to players position -- implement complex movement vertically if needed
                // gravity factor sets your gravity strength, i use something like 0.1
                player.worldRow = (int) player.worldRow - round(player.velocity * GRAVITYFACTOR);

            } else {
        
                player.velocity = 0; // grounds player if player is on ground
                canJump = 1;         // allows player to jump
            }
        }
        // checking ABOVE for collisions, keeps player from jumping through objects above it
        // if player collides with something above, set velocity to 0
        if (player.slide == 0 && player.onLadder == 0 && !(player.worldRow > 0 // checking for compliment to check for collision
            && (collisionMap[OFFSET(player.worldCol, player.worldRow 
                - (int) round(player.velocity * GRAVITYFACTOR), MAPWIDTH)]
            && collisionMap[OFFSET(player.worldCol + player.width - 24, player.worldRow
                - (int) round(player.velocity * GRAVITYFACTOR), MAPWIDTH)]))) {

            player.velocity = 0; // causes player to fall back to ground
            player.worldRow++;
            
               // keeps player from getting stuck in ceiling
        }
        //Logic to limit what player can do if they are hurt or performing a ground slash
        if(player.hurt == 0 && player.slash != 1) {
            // checking the LEFT corners and middle left of player
            // if collision map allows player to move, perform complex movement
            if(player.slide == 0 && BUTTON_HELD(BUTTON_LEFT) && player.onLadder == 0
                && player.worldCol - hOff > 0 
                    && collisionMap[OFFSET(player.worldCol - player.cdel, player.worldRow 
                        - (int) round(player.velocity * GRAVITYFACTOR), MAPWIDTH)]
                    && collisionMap[OFFSET(player.worldCol - player.cdel, player.worldRow + player.height - 1 
                        - (int) round(player.velocity * GRAVITYFACTOR), MAPWIDTH)]
                    // checking the middle of sprite as well to prevent clipping on thin platforms
                    && collisionMap[OFFSET(player.worldCol - player.cdel, player.worldRow + player.height/2 - 1 
                        - (int) round(player.velocity * GRAVITYFACTOR), MAPWIDTH)]) {
                    if(player.slash != 2) {
                        player.direction = 2;
                    }
                    player.worldCol -= player.cdel;
                    // complex movement 
                    if (hOff > 0 && player.worldCol - hOff < SCREENWIDTH / 2) { 
                        hOff--;
                    }
            } 
    
        // checking the RIGHT corners and middle right of player
        // if collision map allows player to move, perform complex movement
            if (player.slide == 0 && BUTTON_HELD(BUTTON_RIGHT) && player.onLadder == 0
                && player.worldCol - hOff + player.width < SCREENWIDTH 
                    && collisionMap[OFFSET(player.worldCol + player.cdel + player.width - 9, player.worldRow 
                        - (int) round(player.velocity * GRAVITYFACTOR), MAPWIDTH)]
                    && collisionMap[OFFSET(player.worldCol + player.cdel + player.width - 9, player.worldRow + player.height - 1 
                        - (int) round(player.velocity * GRAVITYFACTOR), MAPWIDTH)]
                    // checking the middle of sprite as well to prevent clipping on thin platforms
                    && collisionMap[OFFSET(player.worldCol + player.cdel + player.width - 9, player.worldRow + player.height/2 - 1 
                        - (int) round(player.velocity * GRAVITYFACTOR), MAPWIDTH)]
                ) {
                    if(player.slash != 2) {
                        player.direction = 1;
                    }
                    player.worldCol += player.cdel;

                    // complex movement 
                    if (hOff + SCREENWIDTH < MAPWIDTH && player.worldCol - hOff >= SCREENWIDTH / 2) {
                        hOff++;
                    }
                } 

            // actual jump action, sets initial velocity to shoot player up
            if (BUTTON_PRESSED(BUTTON_A) && canJump && player.slide == 0 && player.onLadder == 0 && !BUTTON_HELD(BUTTON_DOWN) ) {
                player.worldRow -= 1;           // keeps player from getting stuck in ground
                player.velocity += JUMPVELOCITY; 

                player.jumpTimer = 0;
            
            } // Makes jump higher if held
            else if (player.jumpTimer < 6 && BUTTON_HELD(BUTTON_A) 
                && !canJump && player.onLadder == 0 && !BUTTON_HELD(BUTTON_DOWN) && player.velocity > 0) {
            
                // if player is still holding jump, the player will be able to jump higher
                player.velocity += JUMPHOLDVELOCITY;
                player.jumpTimer++;
            }

            // Logic for player to slide when they press down and jump button at same time
            if(BUTTON_PRESSED(BUTTON_A) && BUTTON_HELD(BUTTON_DOWN) && canJump == 1 && player.slide == 0 && player.onLadder == 0 && player.hurt == 0) {
                player.slideTimer = 30;
                player.height = 16;
                if (player.direction == 1) {
                    player.slide = 1;
                }
                if (player.direction == 2) {
                    player.slide = 2;
                }
            }
            // Player slides to the right at double their normal speed
            if(player.slide == 1 && player.worldCol - hOff + player.width < SCREENWIDTH 
                    && collisionMap[OFFSET(player.worldCol + player.cdel + player.width , player.worldRow 
                        + 8, MAPWIDTH)]
                    && collisionMap[OFFSET(player.worldCol + player.cdel + player.width , player.worldRow + player.height - 1 
                        - (int) round(player.velocity * GRAVITYFACTOR), MAPWIDTH)]
                    // checking the middle of sprite as well to prevent clipping on thin platforms
                    && collisionMap[OFFSET(player.worldCol + player.cdel + player.width , player.worldRow + player.height/2 - 1 
                        - (int) round(player.velocity * GRAVITYFACTOR), MAPWIDTH)]) {
                            player.worldCol += player.cdel * 2;
                            if (hOff + SCREENWIDTH < MAPWIDTH && player.worldCol - hOff >= SCREENWIDTH / 2) {
                        hOff+= 2;
                        }
            }
        // Player slides to left at double normal speed
        if(player.slide == 2 && player.worldCol - hOff > 0 
                && collisionMap[OFFSET(player.worldCol - player.cdel - 1, player.worldRow 
                    + 8, MAPWIDTH)]
                && collisionMap[OFFSET(player.worldCol - player.cdel - 1, player.worldRow + player.height - 1 
                    - (int) round(player.velocity * GRAVITYFACTOR), MAPWIDTH)]
                // checking the middle of sprite as well to prevent clipping on thin platforms
                && collisionMap[OFFSET(player.worldCol - player.cdel - 2, player.worldRow + player.height/2 - 1 
                    - (int) round(player.velocity * GRAVITYFACTOR), MAPWIDTH)]
            ) {
            
                player.worldCol -= player.cdel*2;

            // complex movement 
            if (hOff > 0 && player.worldCol - hOff < SCREENWIDTH / 2) { 
                hOff-= player.cdel* 2;
            }
        }
        player.slideTimer--;

        // Logic for player slide to end. Player's can cancel out of there slide whenever they are able
        // move up from out of slide, if there were to be collision above the player if they left the slide state, then they keep sliding
        // regardless of whether or not the slide timer is below 0
        if (player.slide != 0 && (player.slideTimer <= 0 || BUTTON_HELD(BUTTON_LEFT) || BUTTON_HELD(BUTTON_RIGHT) || (BUTTON_PRESSED(BUTTON_A) && !BUTTON_HELD(BUTTON_DOWN))) && (player.worldRow > 0 // checking for compliment to check for collision
                && (collisionMap[OFFSET(player.worldCol, player.worldRow - player.rdel - 1 
                    - (int) round(player.velocity * GRAVITYFACTOR), MAPWIDTH)]
                && collisionMap[OFFSET(player.worldCol + player.width - 1, player.worldRow - player.rdel - 1
                    - (int) round(player.velocity * GRAVITYFACTOR), MAPWIDTH)]
            ))) {
                player.slide = 0;
                //player.worldRow--;
            }
            // sets player's height back to its standard state, slide is the only player state to mess with player's height
        if (player.slide == 0) {
            player.height = 24;
        }

        // Puts player on ladder, player can pretty much get on the ladder from every state besides the hurt and slide state
        if(player.slide == 0 && ((BUTTON_HELD(BUTTON_UP) && (player.worldRow > 0 
                && (ladderCollision[OFFSET(player.worldCol, player.worldRow - player.rdel - 1 
                    , MAPWIDTH)]
                && ladderCollision[OFFSET(player.worldCol + player.width - 9 , player.worldRow - player.rdel - 1
                    , MAPWIDTH)]
                ))) || (BUTTON_HELD(BUTTON_DOWN) && (ladderCollision[OFFSET(player.worldCol, player.worldRow + player.height + player.rdel - 1  
                    , MAPWIDTH)]
                && ladderCollision[OFFSET(player.worldCol + player.width - 9,  player.worldRow + player.height + player.rdel - 1 
                    , MAPWIDTH)]
                ))) ) {
                    player.onLadder = 1;
                    player.velocity = 0;      
                }
            if(player.onLadder == 1) {
                /* If player presses the jump button, they can quickly "fall" off the ladder. The way I implemented ladder collision makes it so
                if you press jump when the player is inbetween the collision maps, they will get stuck. I fixed this by making it so
                the player can't jump off the ladder if they are almost at the end of it. I might change this later as I want the player to be
                able to fall off wherever, I'm just not sure how to implement that without completely rethinking my ladder collision logic. 
                */
                if(BUTTON_PRESSED(BUTTON_A) && ((collisionMap[OFFSET(player.worldCol, player.worldRow + player.height + player.rdel   
                    , MAPWIDTH)]
                    && collisionMap[OFFSET(player.worldCol + player.width - 2,  player.worldRow + player.height + player.rdel  
                        , MAPWIDTH)])) && ((player.worldRow > 0 
                        && (collisionMap[OFFSET(player.worldCol, player.worldRow - player.rdel - 1 
                        , MAPWIDTH)]
                            && collisionMap[OFFSET(player.worldCol + player.width - 2, player.worldRow - player.rdel - 1
                            , MAPWIDTH)])))
                                && ((collisionMap[OFFSET(player.worldCol, player.worldRow + player.height/2 + player.rdel   
                                , MAPWIDTH)]
                                && collisionMap[OFFSET(player.worldCol + player.width - 2,  player.worldRow + player.height/2 + player.rdel  
                                , MAPWIDTH)]
                                )) ) {
                        player.onLadder = 0;
                        }
                    else { 
                        //Checking feet of megaman to determine when to get off ladder
                if ((ladderCollision[OFFSET(player.worldCol, player.worldRow + player.height + player.rdel   
                    , MAPWIDTH)]
                    && ladderCollision[OFFSET(player.worldCol + player.width - 9,  player.worldRow + player.height + player.rdel  
                        , MAPWIDTH)]
                    )) {
                        player.onLadder = 1;
                    } else {
                        jumpAniCooldown = 0;
                        player.onLadder = 0;
                    }
                }
                // Moves player up ladder
                if(BUTTON_HELD(BUTTON_UP)) {
                    player.worldRow -= player.rdel;
                }
                // Moves player down ladder
                if(BUTTON_HELD(BUTTON_DOWN)) {
                    player.worldRow += player.rdel;
                }
                // Player can't move sideways on a ladder, but they can change the direction they face to aim weapon
                if(BUTTON_HELD(BUTTON_RIGHT)) {
                    player.direction = 1;
                }
                if(BUTTON_HELD(BUTTON_LEFT)) {
                    player.direction = 2;
                }
            }
        }
    

        // When the player gets hurt, they get sent back a little bit in the opposite direction of wherever they were facing.
        // The player is basically stunned in this state, they can't move or jump or do anything
        if(player.hurt != 0 && player.direction == 1) {
            if (player.worldCol - hOff > 0 
                && collisionMap[OFFSET(player.worldCol - player.cdel, player.worldRow 
                    - (int) round(player.velocity * GRAVITYFACTOR), MAPWIDTH)]
                && collisionMap[OFFSET(player.worldCol - player.cdel, player.worldRow + player.height - 1 
                    - (int) round(player.velocity * GRAVITYFACTOR), MAPWIDTH)]
                // checking the middle of sprite as well to prevent clipping on thin platforms
                && collisionMap[OFFSET(player.worldCol - player.cdel, player.worldRow + player.height/2 - 1 
                    - (int) round(player.velocity * GRAVITYFACTOR), MAPWIDTH)]
            ) {
                player.worldCol -= player.cdel;

                // complex movement 
                if (hOff > 0 && player.worldCol - hOff < SCREENWIDTH / 2) { 
                    hOff--;
                }
            } 
        }

        // Checking to see if player got hurt, if so, then they get moved back a little bit if theres room for them
        if(player.hurt != 0 && player.direction == 2) {
            if( player.worldCol - hOff + player.width < SCREENWIDTH 
                && collisionMap[OFFSET(player.worldCol + player.cdel + player.width - 1, player.worldRow 
                    - (int) round(player.velocity * GRAVITYFACTOR), MAPWIDTH)]
                && collisionMap[OFFSET(player.worldCol + player.cdel + player.width - 1, player.worldRow + player.height - 1 
                    - (int) round(player.velocity * GRAVITYFACTOR), MAPWIDTH)]
                // checking the middle of sprite as well to prevent clipping on thin platforms
                && collisionMap[OFFSET(player.worldCol + player.cdel + player.width - 1, player.worldRow + player.height/2 - 1 
                    - (int) round(player.velocity * GRAVITYFACTOR), MAPWIDTH)]
            ) {
                player.worldCol += player.cdel;

                // complex movement 
                if (hOff + SCREENWIDTH < MAPWIDTH && player.worldCol - hOff >= SCREENWIDTH / 2) {
                    hOff++;
                }
            }
        }
        
        // Player is stunned until timer ends, then they are no longer in the hurt state
        if (player.hurtTimer <= 0) {
            player.hurt = 0;
        }
        player.hurtTimer--;

        // Logic for collision with 1ups, when the player picks one up, they get it added to their life total as long as they haven't reached max 
        for (int i = 0; i < MAXOBJECTCOUNT; i++) {
            if(lives[i].hide == 0 && !player.hurt) {
                if(collision(player.worldCol - 8,player.worldRow,player.width,player.height,
                    lives[i].worldCol,lives[i].worldRow,lives[i].width,lives[i].height)) {
                        lives[i].hide = 1;
                        playSoundB(lifeSound_data,lifeSound_length, 0);
                        if(playerLives <= MAXLIVES ) {
                            playerLives++;
                        }
                    }
            }
        }

        // Logic for small health pickups scattered throughout map, if megaman picks it up, he is healed 
        for (int i = 0; i < MAXOBJECTCOUNT; i++) {
            if(smallHealthPickup[i].hide == 0 && !player.hurt) {
                if(collision(player.worldCol - 4,player.worldRow,player.width,player.height,
                    smallHealthPickup[i].worldCol,smallHealthPickup[i].worldRow,
                        smallHealthPickup[i].width,smallHealthPickup[i].height)) {
                            smallHealthPickup[i].hide = 1;
                            playerHealth += 2;
                            if(playerHealth > 20) {
                                playerHealth = playerHealth - (playerHealth - 20);
                            } else {
                                playSoundB(healthPickup_data,healthPickup_length, 0);
                            }
                            for(int i = HEALTHCOUNT - 1; i >= 0; i--) {
                                if (health[i].hide == 1) {
                                    health[i].hide = 0;
                                    break;
                                }
                            }
                }
            }
        }

        // Logic for large health pickups scattered throughout map, if megaman picks it up, he is healed a lot
        for (int i = 0; i < MAXOBJECTCOUNT; i++) {
            if(largeHealthPickup[i].hide == 0 && !player.hurt) {
                if(collision(player.worldCol - 4,player.worldRow,player.width,player.height,
                    largeHealthPickup[i].worldCol,largeHealthPickup[i].worldRow,
                        largeHealthPickup[i].width,largeHealthPickup[i].height)) {
                            
                            largeHealthPickup[i].hide = 1;
                            playerHealth += 8;
                            if(playerHealth > 20) {
                                playerHealth = playerHealth - (playerHealth - 20);
                            } 
                                
                            for(int i = HEALTHCOUNT - 1; i >= 0; i--) {
                                if (i == 0 && health[i].hide == 1) {
                                    health[i].hide = 0;
                                    playSoundB(healthPickup_data,healthPickup_length, 0);
                                    break;
                                } if (i == 1 && health[i].hide == 1) {
                                    health[i].hide = 0;
                                    health[i-1].hide = 0;
                                    playSoundB(healthPickup_data,healthPickup_length, 0);
                                    break;
                                } if (i == 2 && health[i].hide == 1) {
                                    health[i].hide = 0;
                                    health[i-1].hide = 0;
                                    health[i-2].hide = 0;
                                    playSoundB(healthPickup_data,healthPickup_length, 0);
                                    break;
                                } if (i > 2 && health[i].hide == 1) {
                                    health[i].hide = 0;
                                    health[i-1].hide = 0;
                                    health[i-2].hide = 0;
                                    health[i-3].hide = 0;
                                    playSoundB(healthPickup_data,healthPickup_length, 0);
                                    break;
                                }
                            }
                }
            }
        }

        // Logic for megaman firing from blaster
        for(int i = 0; i < PLAYERBULLETCOUNT; i++) {
            if(playerBullets[i].hide == 1) {
                if(BUTTON_PRESSED(BUTTON_B) && player.slide == 0 && player.onLadder == 0 && player.hurt == 0 && player.bulletTimer >= 10 && player.form == 1) {
            if(player.direction == 1) {
                firePlayerBulletRight();
                playSoundB(busterSound_data,busterSound_length, 0);
            } else if (player.direction == 2) {
                firePlayerBulletLeft();
                playSoundB(busterSound_data,busterSound_length, 0);
            }
            
            player.bulletTimer = 0;
        }
            }
        }
        // This switches megaman from blast form to slash form and vice versa
        if((BUTTON_PRESSED(BUTTON_L) || BUTTON_PRESSED(BUTTON_R)) && toggleTimer >= 60 && player.slashTimer >= 45) {
            toggleTimer = 0;
            if (player.form == 1) {
                player.form = 2;
                playSoundB(switchBlaster_data,switchBlaster_length, 0);
            }  else if (player.form == 2) {
                player.form = 1;
                playSoundB(switchBlaster_data,switchBlaster_length, 0);
            }
        }

        // Logic for when megaman swings his saber
        if(BUTTON_PRESSED(BUTTON_B) && player.form == 2 && player.onLadder == 0 
            && player.slide == 0 && player.hurt == 0 && player.slashTimer >= 45) {
                player.slashTimer = 0;
                if (canJump == 0) {
                    player.slash = 2;
                    playSoundB(slashSound_data, slashSound_length, 0);
                } else {
                    player.slash = 1;
                    playSoundB(slashSound_data, slashSound_length, 0);
                }
            }

        // Player does an air slash, when player swings slash in air, then they can move around and immediately swing again when they land
        if(player.slash == 2) {
            if(player.slashTimer >= 30 || canJump == 1 || player.hurt == 1 || player.onLadder == 1) {
                if(canJump == 1) {
                    wasAirSlash = 1;
                }
                player.slash = 0;
                player.slashTimer = 45;
            }
        }
        // Player does a ground slash, player can't move while doing this
        if (player.slash == 1) {
            if (player.slashTimer >= 30 || player.hurt == 1 || player.onLadder == 1) {
                player.slash = 0;
            }
        }

        // Logic for when player comes into contact with the mole enemies
        for(int i = 0; i < MAXOBJECTCOUNT; i++) {
            if(moleGuys[i].hide == 0) {
                if (iFramesTimer >= IFRAMECOUNT && collision(player.worldCol,player.worldRow,player.height,player.width,
                    moleGuys[i].worldCol,moleGuys[i].worldRow,moleGuys[i].width,moleGuys[i].height)) {
                    playerHealth -= 4;
                    player.slide = 0;
                    player.height = 24;
                    player.hurt = 1;
                    playSoundB(hurtSound_data,hurtSound_length,0);
                    iFramesTimer = 0;
                    player.hurtTimer = 20;
                for(int i = 0; i < HEALTHCOUNT; i++) {
                    if (health[i].hide == 0) {
                        health[i].hide = 1;
                        health[i+1].hide = 1;
                        break;
                    }
                }
                }
            }
        }
        // Logic for when player comes into contact with the mole enemies bullets
        for(int i = 0; i < MAXBULLETCOUNT; i++) {
            if(moleBullets[i].hide == 0) {
                if(iFramesTimer >= IFRAMECOUNT && collision(player.worldCol,player.worldRow,player.height,player.width,
                    moleBullets[i].worldCol,moleBullets[i].worldRow,moleBullets[i].width,moleBullets[i].height)) {
                        player.hurt = 1;
                        playSoundB(hurtSound_data,hurtSound_length,0);
                        player.slide = 0;
                        player.height = 24;
                        moleBullets[i].hide = 1;
                        iFramesTimer = 0;
                        player.hurtTimer = 20;
                        playerHealth -= 2;
                        for(int i = 0; i < HEALTHCOUNT; i++) {
                            if (health[i].hide == 0) {
                            health[i].hide = 1;
                            break;
                        }
                    }
                }
            }
        }
        // Logic for when player comes into contact with the joe enemies
        for(int i = 0; i < MAXOBJECTCOUNT; i++) {
            if(sniperJoes[i].hide == 0) {
                if ( iFramesTimer >= IFRAMECOUNT && collision(player.worldCol,player.worldRow,player.height,player.width,
                    sniperJoes[i].worldCol,sniperJoes[i].worldRow,sniperJoes[i].width,sniperJoes[i].height)) {
                    playerHealth -= 4;
                    player.slide = 0;
                    player.height = 24;
                    player.hurt = 1;
                    playSoundB(hurtSound_data,hurtSound_length,0);
                    iFramesTimer = 0;
                    player.hurtTimer = 20;
                for(int i = 0; i < HEALTHCOUNT; i++) {
                    if (health[i].hide == 0) {
                        health[i].hide = 1;
                        health[i+1].hide = 1;
                        break;
                    }
                }
                }
            }
        }
        // Logic for when player comes into contact with the joe enemies bullets
        for(int i = 0; i < MAXBULLETCOUNT; i++) {
            if(joeBullets[i].hide == 0) {
                if(iFramesTimer >= IFRAMECOUNT && collision(player.worldCol,player.worldRow,player.height,player.width,
                    joeBullets[i].worldCol,joeBullets[i].worldRow,joeBullets[i].width,joeBullets[i].height)) {
                        player.hurt = 1;
                        playSoundB(hurtSound_data,hurtSound_length,0);
                        player.slide = 0;
                        player.height = 24;
                        moleBullets[i].hide = 1;
                        iFramesTimer = 0;
                        player.hurtTimer = 20;
                        playerHealth -= 2;
                        for(int i = 0; i < HEALTHCOUNT; i++) {
                            if (health[i].hide == 0) {
                            health[i].hide = 1;
                            break;
                        }
                    }
                }
            }
        }
        // Logic for when player comes into contact with the octo eye enemies
        for(int i = 0; i < MAXOBJECTCOUNT; i++) {
            if(horiOctoEyes[i].hide == 0) {
                if (iFramesTimer >= IFRAMECOUNT && collision(player.worldCol,player.worldRow,player.height,player.width,
                    horiOctoEyes[i].worldCol,horiOctoEyes[i].worldRow,horiOctoEyes[i].width,horiOctoEyes[i].height)) {
                    playerHealth -= 4;
                    player.hurt = 1;
                    playSoundB(hurtSound_data,hurtSound_length,0);
                    player.slide = 0;
                    player.height = 24;
                    iFramesTimer = 0;
                    player.hurtTimer = 20;
                    for(int i = 0; i < HEALTHCOUNT; i++) {
                        if (health[i].hide == 0) {
                            health[i].hide = 1;
                            health[i+1].hide = 1;
                            break;
                        }
                    }
                }
            }
        }
        // Logic for when player collides with verticle eye monsters
        for(int i = 0; i < MAXOBJECTCOUNT; i++) {
            if(vertOctoEyes[i].hide == 0) {
                if (iFramesTimer >= IFRAMECOUNT && collision(player.worldCol,player.worldRow,player.height,player.width,
                    vertOctoEyes[i].worldCol,vertOctoEyes[i].worldRow,vertOctoEyes[i].width,vertOctoEyes[i].height)) {
                    playerHealth -= 4;
                    player.hurt = 1;
                    playSoundB(hurtSound_data,hurtSound_length,0);
                    player.slide = 0;
                    player.height = 24;
                    iFramesTimer = 0;
                    player.hurtTimer = 20;
                    for(int i = 0; i < HEALTHCOUNT; i++) {
                        if (health[i].hide == 0) {
                            health[i].hide = 1;
                            health[i+1].hide = 1;
                            break;
                        }
                    }
                }
            }
        }

        // Disables cheat when it isn't active
        if(player.form == 3) {
            protoShield.hide = 0;
        } else {
            protoShield.hide = 1;
        }
        // Logic for powered up player bullets
        for(int i = 0; i < PROTOBULLETCOUNT; i++) {
            if(protoBullets[i].hide == 1) {
                if(BUTTON_PRESSED(BUTTON_B) && player.slide == 0 && player.onLadder == 0 && player.hurt == 0 && player.bulletTimer >= 10 && player.form == 3) {
                    if(player.direction == 1) {
                    fireProtoBulletRight();
                    playSoundB(busterSound_data,busterSound_length, 0);
                    } else if (player.direction == 2) {
                    fireProtoBulletLeft();
                    playSoundB(busterSound_data,busterSound_length, 0);
                }
            
                player.bulletTimer = 0;
             }
            }
        }
    }
    toggleTimer++;
    iFramesTimer++;
    player.slashTimer++;
    player.bulletTimer++;
    animateGamePlayer();
}

// Handle player animation states 
void animateGamePlayer() {
    // Weird logic to make animation less janky, for some reason the player falls, stops a couple of blocks before hitting the ground, then falls again. This made the animation look really
    // choppy, so I made it so a fall animation only plays when the player stops the first time.
    if (wasAirSlash == 1) {
        jumpAniCooldown = 5;
    }
    // Logic for displaying jump/fall animation
    if (isFalling == 1 && jumpAniCooldown >= 10 && player.hurt == 0 && player.slash != 2) {
        if(player.bulletTimer < 30) {
            player.aniState = 24;
        } else {
            player.aniState = 8;
        }
        reverseSpriteCheck = 0;
        if (player.direction == 1) {
           player.curFrame = 0; 
        }
        if(player.direction == 2) {
            player.curFrame = 1;
        }    
    }
    // Logic for displaying hurt animation
    if (player.hurt != 0) {
        reverseSpriteCheck = 0;
        player.aniState = 8;
        if(player.direction == 1) {
            player.curFrame = 2;
        }
        if(player.direction == 2) {
            player.curFrame = 3;
        }
    }
    // Logic for displaying ground sword animation
    if (player.slash == 1) {
        reverseSpriteCheck = 0;
        if (player.direction == 2) {
            player.aniState = 8;
            player.curFrame = 4;
        }
    }
    // Logic for displaying air sword animation
    if(player.slash == 2) {
        reverseSpriteCheck = 0;
        if (player.direction == 1) {
            player.aniState = 16;
            player.curFrame = 4;
        }
        if (player.direction == 2) {
            player.aniState = 24;
            player.curFrame = 4;
        }
    }
    // Logic for setting player back to a default idle state once they land from a fall
    if (player.slash != 1 && player.hurt == 0 && isFalling == 0 && (player.aniState == 8 || player.aniState == 20 || player.aniState == 24)) {
        player.curFrame = 0;
        if(player.aniState == 20) {
            jumpAniCooldown = 5;
        } else {
            jumpAniCooldown = 0;
        }
         reverseSpriteCheck = 0;
        if (player.direction == 1) {
           player.aniState = 0; 
        }
        if(player.direction == 2) {
            player.aniState = 4;
        } 
    }
    // Logic for displaying player slide animation
    if (player.slide == 1 && player.hurt == 0 ) {
        reverseSpriteCheck = 0;
        player.aniState = 20;
        player.curFrame = 0;   
    }
    if (player.slide == 2 && player.hurt == 0) {
        reverseSpriteCheck = 0;
        player.aniState = 20;
        player.curFrame = 1;
    }
    // Logic for displaying climbing/ descending from ladder
    if((BUTTON_HELD(BUTTON_DOWN) || BUTTON_HELD(BUTTON_UP)) && player.onLadder != 0 && player.hurt == 0) {
        player.bulletTimer = 30;
        if(player.aniState == 20) {
            player.curFrame = 0;
        }
        player.aniState = 28;
        reverseSpriteCheck = 0;
        if(player.curFrame != 0 && ladderSpriteCheck == 0) {
            player.curFrame = 0;
            ladderSpriteCheck = 1;
        }
        if (player.aniCounter % 8 == 0) {
            player.curFrame = (player.curFrame + 1) % (player.numFrames - 1);
        }
    } 
    // Makes it so player doesnt get stuck in ladder animation for whatever reason 
    if (player.onLadder == 0) {
        ladderSpriteCheck = 0;
    }

    // Logic for when player is moving left
    if (BUTTON_HELD(BUTTON_LEFT) && player.slide == 0 && player.onLadder == 0 && isFalling == 0 && player.hurt == 0 && player.slash != 1 && player.slash != 2) {
            if(player.bulletTimer < 30) {
                player.aniState = 16;
            } else {
                player.aniState = 4;
            }
            if(wasAirSlash == 1) {
                player.curFrame = 0;
                wasAirSlash = 0;
            }
            if (player.aniCounter % 8 == 0) {
                if (reverseSpriteCheck == 0) {
                    player.curFrame = (player.curFrame + 1) % 4;
                    if (player.curFrame == 3) {
                        reverseSpriteCheck = 1;
                    }
                } else if (reverseSpriteCheck == 1) {
                    player.curFrame = (player.curFrame - 1) % 4;
                    if (player.curFrame == 1) {
                        reverseSpriteCheck = 0;
                    }
                }
            
        }
    }
    // Logic for when player is moving right
    if (BUTTON_HELD(BUTTON_RIGHT) && player.slide == 0 && player.onLadder == 0  && isFalling == 0 && player.hurt == 0 && player.slash != 1 && player.slash != 2 ) {
        if(player.bulletTimer < 30) {
            player.aniState = 12;
        } else {
            player.aniState = 0;
        }    
        if(wasAirSlash == 1) {
                player.curFrame = 0;
                wasAirSlash = 0;
            }
        if (player.aniCounter % 8 == 0) {
            if(reverseSpriteCheck == 0) {
                    player.curFrame = (player.curFrame + 1) % 4;
                    if(player.curFrame == 3) {
                        reverseSpriteCheck = 1;
                    }
               
                } else if(reverseSpriteCheck == 1) {
                    player.curFrame = (player.curFrame - 1) % 4;
                    if (player.curFrame == 1) {
                        reverseSpriteCheck = 0;
                    }
                    
            }
        }
    }
    // Logic for default / idle state
    if (player.hurt == 0 && player.onLadder == 0 && isFalling == 0 && player.slide == 0 && ((player.slash != 2 && player.slash != 1 && player.direction == 1 && !BUTTON_HELD(BUTTON_RIGHT)) || (player.slash != 2 && player.slash != 1 && player.direction == 2 && !BUTTON_HELD(BUTTON_LEFT)))) {
        player.curFrame = 0;
        player.aniCounter = 0;
        reverseSpriteCheck = 0;
        if(player.direction == 1) {
            if(player.bulletTimer < 30) {
                player.aniState = 12;
            } else {
                 player.aniState = 0;
            }
           
        }
        if (player.direction == 2) {
            if (player.bulletTimer < 30) {
                player.aniState = 16;
            } else {
                player.aniState = 4;
            }
            
        }
        
    } else {
        player.aniCounter++;
    }
    jumpAniCooldown++;
}

// Draws the text
void drawText() {
     for(int i = 0; i < CHARCOUNT; i++) {
        shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & text[i].worldRow) | ATTR0_SQUARE;
        if(i == 0) {
            shadowOAM[shadowOAMIndex].attr1 = (COLMASK & text[i].worldCol) | ATTR1_SMALL;
        } else {
            shadowOAM[shadowOAMIndex].attr1 = (COLMASK & text[i].worldCol) | ATTR1_TINY;
        }
        if (i == 0) {
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(20, 24);
            shadowOAMIndex++;  
        }
        else if(i == 1) {
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(23, 30); 
            shadowOAMIndex++; 
        } else if (i == 3){
            
            if(player.form == 3) {
                shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & text[i].worldRow) | ATTR0_WIDE;
                shadowOAM[shadowOAMIndex].attr1 = (COLMASK & text[i].worldCol) | ATTR1_MEDIUM;
                shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(26, 26);
                shadowOAMIndex++; 
            } else {
                shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & text[i].worldRow) | ATTR0_SQUARE;
                shadowOAM[shadowOAMIndex].attr1 = (COLMASK & text[i].worldCol) | ATTR1_SMALL;
                shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(24 + (player.form*2), 24);
                shadowOAMIndex++;
            }
             
        } else {
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(playerLives + 16, 28); 
            shadowOAMIndex++;
        }
    }
}

// Draw the player's states 
void drawPlayer() {

    if (player.hide) {
        shadowOAM[shadowOAMIndex].attr0 |= ATTR0_HIDE;
        shadowOAMIndex++;
    } else {
        if (player.direction == 2 && player.bulletTimer < 30 ) {
            shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (player.worldRow - vOff)) | ATTR0_SQUARE;
            shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (player.worldCol - 12 - hOff)) | ATTR1_MEDIUM;
        }
        else if (player.slash != 0 && player.direction == 1) {
            shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (player.worldRow - 16 - vOff)) | ATTR0_SQUARE;
            shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (player.worldCol - hOff)) | ATTR1_LARGE;
        } else if (player.slash != 0 && player.direction == 2) {
            shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (player.worldRow - 16 - vOff)) | ATTR0_SQUARE;
            shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (player.worldCol - 20 - hOff)) | ATTR1_LARGE;
        } else  {
            shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (player.worldRow - vOff)) | ATTR0_SQUARE;
            shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (player.worldCol - hOff)) | ATTR1_MEDIUM;
        }
        if(player.slash == 1 && player.direction == 1) {
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 16);
            shadowOAMIndex++;
        } else {
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(player.aniState, player.curFrame*4);
            shadowOAMIndex++;
        }
        
    }
}

// Initializes the player's health
void initHealth() {
    for(int i = 0; i < HEALTHCOUNT; i++) {
        health[i].worldRow = 10  + (4* i);
        health[i].worldCol = 10;
        health[i].hide = 0;
    }
}

// Draws the player's health
void drawHealth() {
     for(int i = 0; i < HEALTHCOUNT; i++) {
        shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & health[i].worldRow) | ATTR0_SQUARE;
        shadowOAM[shadowOAMIndex].attr1 = (COLMASK & health[i].worldCol) | ATTR1_TINY;
        if (!health[shadowOAMIndex].hide) {
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(20, 27);
            shadowOAMIndex++;
        } else {
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(21, 27);
            shadowOAMIndex++;
        }
        
        }
}

// Initialize the text
void initText() {
    for (int i = 0; i < CHARCOUNT; i++) {
        if(i == 0) {
            text[i].worldRow = 10;
            text[i].worldCol = 30;
        } else if (i == 3) {
            text[i].worldRow = 14;
            text[i].worldCol = 68;
        } else {
            text[i].worldRow = 18;
            text[i].worldCol = 40 + (8*i);
        }
    }
}



// Initializes the lives
void initLives() {
    for(int i = 0; i <  livesCount; i++) {
        if(levelsCleared == 0) {
            lives[i].worldRow = 30;
            lives[i].worldCol = 7;
            lives[i].hide = 0;
        }
        if(levelsCleared == 1) {
            lives[i].worldRow = 110;
            lives[i].worldCol = 409;
            lives[i].hide = 0;
        }
         if(levelsCleared == 2) {
            lives[i].worldRow = 56;
            lives[i].worldCol = 277;
            lives[i].hide = 0;
        }
        if(levelsCleared == 3) {
            lives[i].worldRow = 40;
            lives[i].worldCol = 232;
            lives[i].hide = 0;
        }
        if(levelsCleared == 4) {
            lives[i].worldRow = 47;
            lives[i].worldCol = 496;
            lives[i].hide = 0;
        }
    }

}

// Draws the lives
void drawLives() {
    for(int i = 0; i < livesCount; i++) {
        if (lives[i].hide) {
            shadowOAM[shadowOAMIndex].attr0 |= ATTR0_HIDE;
            shadowOAMIndex++;
        } else {
            shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (lives[i].worldRow - vOff)) | ATTR0_SQUARE;
            shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (lives[i].worldCol - hOff)) | ATTR1_SMALL;
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(20, 24);
            shadowOAMIndex++;
        }
    }

}

// Initializes the small health pickups
void initSmallHealthPickups() {
    for(int i = 0; i < smallPickupsCount; i++) {
        if(levelsCleared == 0) {
            smallHealthPickup[i].worldRow = 104 + (14*i);
            smallHealthPickup[i].worldCol = 495;
        }
        if(levelsCleared == 1) {
            smallHealthPickup[i].worldRow = 74;
            smallHealthPickup[i].worldCol = 267 + (49*i);
        }
        if(levelsCleared == 2) {
            smallHealthPickup[i].worldRow = 140;
            smallHealthPickup[i].worldCol = 248 + (40*i);
        }
        if(levelsCleared == 3) {
            smallHealthPickup[i].worldRow = 44;
            smallHealthPickup[i].worldCol = 140 + (192*i);
        }
        if(levelsCleared == 4) {
            if(i < 2) {
                smallHealthPickup[i].worldRow = 102;
                smallHealthPickup[i].worldCol = 480 + (20*i);
            } else {
                smallHealthPickup[i].worldRow = 118;
                smallHealthPickup[i].worldCol = 480 + (20*(i-2));
            }
            
        } 
        smallHealthPickup[i].hide = 0;
        smallHealthPickup[i].numFrames = 2;
        smallHealthPickup[i].aniCounter = 12;
    }
}

// Animates the health pickups each frame
void animatePickups() {
    for(int i = 0; i < smallPickupsCount; i++) {
        if(smallHealthPickup[i].hide == 0) {
            if(smallHealthPickup[i].aniCounter % 12 == 0) {
                if (smallHealthPickup[i].curFrame < smallHealthPickup[i].numFrames -1) {
                    smallHealthPickup[i].curFrame++;
                } else {
                    smallHealthPickup[i].curFrame = 0;
                }
            }
        smallHealthPickup[i].aniCounter++;
        }
    }
    
    for(int i = 0; i < largePickupsCount; i++) {
        if(largeHealthPickup[i].hide == 0) {
            if(largeHealthPickup[i].aniCounter % 12 == 0) {
                if (largeHealthPickup[i].curFrame < largeHealthPickup[i].numFrames -1) {
                    largeHealthPickup[i].curFrame++;
                } else {
                    largeHealthPickup[i].curFrame = 0;
                 }
            }
        largeHealthPickup[i].aniCounter++;
        }
        
    }
    
}
// Draws the small health pickups
void drawSmallHealthPickups() {
    for(int i = 0; i < smallPickupsCount; i++) {
        if (smallHealthPickup[i].hide) {
            shadowOAM[shadowOAMIndex].attr0 |= ATTR0_HIDE;
            shadowOAMIndex++;
        } else {
            shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (smallHealthPickup[i].worldRow - vOff)) | ATTR0_SQUARE;
            shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (smallHealthPickup[i].worldCol - hOff)) | ATTR1_TINY;
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(20 + smallHealthPickup[i].curFrame, 26);
            shadowOAMIndex++;
        }
    }
}

// Initializes the large health pickups
void initLargeHealthPickups() {
    for(int i = 0; i < largePickupsCount; i++) {
        if(levelsCleared == 0) {
            largeHealthPickup[i].worldRow = 110;
            largeHealthPickup[i].worldCol = 280;
        }
        if(levelsCleared == 1) {
            largeHealthPickup[i].worldRow = 40;
            largeHealthPickup[i].worldCol = 490;
        }
        if(levelsCleared == 2) {
            largeHealthPickup[i].worldRow = 60;
            largeHealthPickup[i].worldCol = 494;
        }
        if(levelsCleared == 3) {
            largeHealthPickup[i].worldRow = 54;
            largeHealthPickup[i].worldCol = 494;
        }
        if(levelsCleared == 4) {
            largeHealthPickup[i].worldRow = 15;
            largeHealthPickup[i].worldCol = 196 + (100*i);
        }
        largeHealthPickup[i].numFrames = 2;
        largeHealthPickup[i].hide = 0;
        largeHealthPickup[i].aniCounter = 12;
    }
}

// Draws the large health pickups
void drawLargeHealthPickups() {
    for(int i = 0; i < largePickupsCount; i++) {
        if (largeHealthPickup[i].hide) {
            shadowOAM[shadowOAMIndex].attr0 |= ATTR0_HIDE;
            shadowOAMIndex++;
        } else {
            shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (largeHealthPickup[i].worldRow - vOff)) | ATTR0_SQUARE;
            shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (largeHealthPickup[i].worldCol - hOff)) | ATTR1_SMALL;
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(22, 24 + (largeHealthPickup[i].curFrame * 2));
            shadowOAMIndex++;
        }
    }
}

// Initializes the player's bullets
void initPlayerBullets() {
    for (int i = 0; i < PLAYERBULLETCOUNT; i++) {
		playerBullets[i].height = 16;
		playerBullets[i].width = 8;
		playerBullets[i].worldRow = -playerBullets[i].height;
		playerBullets[i].worldCol = 0;
		playerBullets[i].cdel = 2;
        playerBullets[i].hide = 1;
	}
}

// fires a bullet to the left when player fires facing left
void firePlayerBulletLeft() {
    for (int i = 0; i < PLAYERBULLETCOUNT; i++) {
        if (playerBullets[i].hide == 1) {
            playerBullets[i].worldRow = player.worldRow + (player.height/2) - 5;
            playerBullets[i].worldCol = player.worldCol - 22;

            playerBullets[i].hide = 0;
            playerBullets[i].direction = 2;
            break;
        }
    }
}

// Sets bullet to the right when player fires bullet and is facing right
void firePlayerBulletRight() {
    for (int i = 0; i < PLAYERBULLETCOUNT; i++) {
        if (playerBullets[i].hide == 1) {
            playerBullets[i].worldRow = player.worldRow + (player.height/2) - 5;
            playerBullets[i].worldCol = player.worldCol + player.width + 8;

            playerBullets[i].hide = 0;
            playerBullets[i].direction = 1;
            break;
        }
    }
}

// Updates the bullet's position each frame
void updatePlayerBullet(ANISPRITE* p) {
    if (p->hide == 0) {
        if (p->direction == 1) {
            if (p->worldCol + p-> width - hOff < (MAPWIDTH /2)) {
                p->worldCol += p->cdel;
            } else {
                p->hide = 1;
            }
        }
        if (p ->direction == 2) {
            if (p->worldCol - hOff >= 0 ) {
                p->worldCol -= p->cdel;
            } else {
                p->hide = 1;
            }
        }
    }
}

// Draw's the player's bullets
void drawPlayerBullets() {
     for(int i = 0; i < PLAYERBULLETCOUNT; i++) {
        if (playerBullets[i].hide) {
            shadowOAM[shadowOAMIndex].attr0 |= ATTR0_HIDE;
            shadowOAMIndex++;
        } else {
            shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (playerBullets[i].worldRow - vOff)) | ATTR0_SQUARE;
            shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (playerBullets[i].worldCol - hOff)) | ATTR1_TINY;
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(24 , 26);
            shadowOAMIndex++;
        }
    }
}

// Initializes the mole enemies
void initMoleGuys() {
    for(int i = 0; i < moleGuyCount; i++) {
        moleGuys[i].width = 16;
        moleGuys[i].height = 16;
        moleGuys[i].health = 6;
        moleGuys[i].bulletTimer = 100;
        moleGuys[i].hide = 0;
        moleGuys[i].guard = 1;
        moleGuys[i].canShoot = 0;
        //default to facing left
        moleGuys[i].direction = 2;
        if(levelsCleared == 2) {
            if (i == 0) {
                moleGuys[i].worldCol = 72;
                moleGuys[i].worldRow = 72;
            } else if (i == 1) {
                moleGuys[i].worldCol = 232;
                moleGuys[i].worldRow = 100; 
            } else if (i == 2) {
                moleGuys[i].worldCol = 336;
                moleGuys[i].worldRow = 100; 
            } else if (i == 3) {
                moleGuys[i].worldCol = 384;
                moleGuys[i].worldRow = 64; 
            } else if (i == 4) {
                moleGuys[i].worldCol = 376;
                moleGuys[i].worldRow = 16; 
            } else if (i == 5) {
                moleGuys[i].worldCol = 304;
                moleGuys[i].worldRow = 56; 
            } else if (i == 6) {
                moleGuys[i].worldCol = 240;
                moleGuys[i].worldRow = 56; 
            } else if (i == 7) {
                moleGuys[i].worldCol = 40;
                moleGuys[i].worldRow = 16; 
            } else if (i == 8) {
                moleGuys[i].worldCol = 184;
                moleGuys[i].worldRow = 16; 
            } else if (i == 9) {
                moleGuys[i].worldCol = 480;
                moleGuys[i].worldRow = 24; 
            }
        }
        if(levelsCleared == 4) {
            if (i == 0) {
                moleGuys[i].worldCol = 88;
                moleGuys[i].worldRow = 40; 
            } else if (i == 1) {
                moleGuys[i].worldCol = 224;
                moleGuys[i].worldRow = 112; 
            } else if (i == 2) {
                moleGuys[i].worldCol = 224;
                moleGuys[i].worldRow = 16; 
            } else if (i == 3) {
                moleGuys[i].worldCol = 256;
                moleGuys[i].worldRow = 16; 
            }  
        }
    }
}

// handles frame-actions of mole enemies
void updateMoleGuy(ANISPRITE* m) {
    // Overview of mole enemies, they are hidden from player until they get close to them, once they are close
    // they pop up and shoot player. The player can only damage them with bullets when they are popped up. If the player
    // is using a slash, they can instantly kill them regardless of whether or not they have popped up.
    if(m->hide == 0) {
        for(int i = 0; i < PLAYERBULLETCOUNT; i++) {
            if(playerBullets[i].hide == 0) {
                if(collision(m->worldCol, m->worldRow, m->width, m->height, playerBullets[i].worldCol, playerBullets[i].worldRow,playerBullets[i].width,playerBullets[i].height))
                {
                   
                    if(m->guard == 0) {
                        m->health -= 2;
                        playSoundB(enemyHit_data,enemyHit_length, 0);
                        playerBullets[i].hide = 1;
                    } else {
                        playSoundB(enemyDinked_data,enemyDinked_length, 0);
                        playerBullets[i].hide = 1;
                    }
                        if( m->health <= 0) {
                            m->hide = 1;
                            enemyCount--;
                        }
                    }
                }
            }
            for(int i = 0; i < PROTOBULLETCOUNT; i++) {
                if(protoBullets[i].hide == 0) {
                    if(collision(m->worldCol, m->worldRow, m->width, m->height, protoBullets[i].worldCol, protoBullets[i].worldRow,protoBullets[i].width,protoBullets[i].height))
                    {
                        m->health -= 4;
                        playSoundB(enemyHit_data,enemyHit_length, 0);
                        protoBullets[i].hide = 1;
                        if( m->health <= 0) {
                            m->hide = 1;
                            enemyCount--;
                        }
                    }
                }
            }
        if(player.direction == 1 && player.slash != 0) {
            if(collision(m->worldCol, m->worldRow, m->width,m->height, player.worldCol + 16, player.worldRow, player.width, player.height)) {
                m->health -= 6;
                    if( m->health <= 0) {
                            m->hide = 1;
                            enemyCount--;
                }
            }
        }
        if(player.direction == 2 && player.slash != 0) {
            if(collision(m->worldCol, m->worldRow, m->width,m->height, player.worldCol - 16, player.worldRow, player.width, player.height)) {
                m->health -= 6;
                    if( m->health <= 0) {
                            m->hide = 1;
                            enemyCount--;
                }
            }
        }
        // Logic so that mole only pops up once player is within a certain range
        if(abs(player.worldRow - m->worldRow) < 16) {
             if(player.worldCol - m->worldCol < 0) {
                m->direction = 2;
                    if(abs(player.worldCol - m->worldCol) < 80) {
                        m->guard = 0;
                        if(abs(player.worldCol - m->worldCol) < 56) {
                            m->canShoot = 1;
                        }
                    }  else {
                         m->guard = 1;
                         m->canShoot = 0;
                    }     
            }
        if(player.worldCol - m->worldCol > 0) {
            m->direction = 1;
            if(abs(m->worldCol - player.worldCol ) < 80) {
                    m->guard = 0;
                    if(abs(player.worldCol - m->worldCol) < 64) {
                            m->canShoot = 1;
                        }

                } else {
                    m->guard = 1;
                    m->canShoot = 0;
                } 
            }
        }
        if (abs(player.worldCol - m->worldCol) > 100) {
            m->guard = 1;
            m->canShoot = 0;
        }       
     
        if(m->canShoot == 1  && m->guard == 0 && m->bulletTimer >= 100 ) {
            if (m->direction == 1) {
                   for (int i = 0; i < moleBulletCount; i++) {
                        if (moleBullets[i].hide == 1) {
                            moleBullets[i].worldRow = m->worldRow + m->height/2;
                            moleBullets[i].worldCol = m->worldCol + m->width;
                            moleBullets[i].hide = 0;
                            moleBullets[i].direction = 1;
                            break;
                        }
                    }
                }  
             if (m->direction == 2) {
                for (int i = 0; i < moleBulletCount; i++) {
                    if (moleBullets[i].hide == 1) {
                    moleBullets[i].worldRow = m->worldRow + m->height/2;
                    moleBullets[i].worldCol = m->worldCol;

                    moleBullets[i].hide = 0;
                    moleBullets[i].direction = 2;
                    break;
                    }
                }
            }
            m->bulletTimer = rand() % 30;
        }
        m->bulletTimer++;  
    }
}
    

// Draws the mole enemies
void drawMoleGuys() {
    for(int i = 0; i < moleGuyCount; i++) {
        if(moleGuys[i].hide) {
            shadowOAM[shadowOAMIndex].attr0 |= ATTR0_HIDE;
            shadowOAMIndex++;
        } else {
            shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (moleGuys[i].worldRow - vOff)) | ATTR0_SQUARE;
            shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (moleGuys[i].worldCol - hOff)) | ATTR1_SMALL;
            if (moleGuys[i].direction == 1 && moleGuys[i].guard == 0) {
                shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(18, 26);
                shadowOAMIndex++;
            } else if (moleGuys[i].direction == 1 && moleGuys[i].guard == 1) {
                shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(18, 24);
                shadowOAMIndex++;
            } else if (moleGuys[i].direction == 2 && moleGuys[i].guard == 1) {
                shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(16, 24);
                shadowOAMIndex++;
            } else if (moleGuys[i].direction == 2 && moleGuys[i].guard == 0) {
                shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(16, 26);
                shadowOAMIndex++;
            }
            
        }
    }
}

// Initializes the mole enemies' bullets
void initMoleBullets() {
    for (int i = 0; i < moleBulletCount; i++) {
		moleBullets[i].height = 8;
		moleBullets[i].width = 8;
		moleBullets[i].worldRow = -moleBullets[i].height;
		moleBullets[i].worldCol = 0;
		moleBullets[i].cdel = 2;
        moleBullets[i].hide = 1;
	}
}





// Updates position of mole enemy bullet each frame
void updateMoleBullet(ANISPRITE* p) {
    if (p->hide == 0) {
        if (p->direction == 1) {
            if (p->worldCol + p-> width - hOff < (MAPWIDTH /2)) {
                p->worldCol += p->cdel;
            } else {
                p->hide = 1;
            }
        }
        if (p ->direction == 2) {
            if (p->worldCol - hOff >= 0 ) {
                p->worldCol -= p->cdel;
            } else {
                p->hide = 1;
            }
        }
    }
}

// Draws the mole enemies' bullets
void drawMoleBullets() {
     for(int i = 0; i < moleBulletCount; i++) {
        if (moleBullets[i].hide) {
            shadowOAM[shadowOAMIndex].attr0 |= ATTR0_HIDE;
            shadowOAMIndex++;
        } else {
            shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (moleBullets[i].worldRow - vOff)) | ATTR0_SQUARE;
            shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (moleBullets[i].worldCol - hOff)) | ATTR1_TINY;
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(25 , 27);
            shadowOAMIndex++;
        }
    }
}

// Initializes the sniper Joes.
void initSniperJoes() {
    for(int i = 0; i < sniperJoeCount; i++) {
        sniperJoes[i].width = 16;
        sniperJoes[i].height = 16;
        sniperJoes[i].health = 10;
        sniperJoes[i].bulletTimer = 60;
        sniperJoes[i].hide = 0;
        sniperJoes[i].guard = 1;
        sniperJoes[i].guardTimer = 160;
        sniperJoes[i].cooldown = 240;
        //default to facing left
        sniperJoes[i].direction = 2;
        if(levelsCleared == 3) {
            if(i == 0) {
                sniperJoes[i].worldCol = 1;
                sniperJoes[i].worldRow = 56;
            } else if (i == 1) {
                sniperJoes[i].worldCol = 88;
                sniperJoes[i].worldRow = 68;
            } else if (i == 2) {
                sniperJoes[i].worldCol = 206;
                sniperJoes[i].worldRow = 68;
            } else if (i == 3) {
                sniperJoes[i].worldCol = 264;
                sniperJoes[i].worldRow = 68;
            } else if (i == 4) {
                sniperJoes[i].worldCol = 366;
                sniperJoes[i].worldRow = 68;
            } else if (i == 5) {
                sniperJoes[i].worldCol = 464;
                sniperJoes[i].worldRow = 48;
            } else if (i == 6) {
                sniperJoes[i].worldCol = 302;
                sniperJoes[i].worldRow = 16;
            } else if (i == 7) {
                sniperJoes[i].worldCol = 152;
                sniperJoes[i].worldRow = 16;
            } else if (i == 8) {
                sniperJoes[i].worldCol = 110;
                sniperJoes[i].worldRow = 16;
            }
        }
        if (levelsCleared == 4) {
            if (i == 0) {
                sniperJoes[i].worldCol = 118;
                sniperJoes[i].worldRow = 104;
            } else if (i == 1) {
                sniperJoes[i].worldCol = 164;
                sniperJoes[i].worldRow = 8;
            } else if (i == 2) {
                sniperJoes[i].worldCol = 304;
                sniperJoes[i].worldRow = 8;
            } else if (i == 3) {
                sniperJoes[i].worldCol = 312;
                sniperJoes[i].worldRow = 104;
            } 
        }
    }
}

// Updates the sniper Joes each frame
void updateSniperJoe(ANISPRITE* j) {
    // Overview of Sniper Joes. They are very similar to the mole enemies, except that when the player gets close to them,
    // they randomly alternate between guarding and shooting. They will always shoot for the same period of time, but the periods of time
    // where they are guarding can vary.
    if(j->hide == 0) {
        for(int i = 0; i < PLAYERBULLETCOUNT; i++) {
            if(playerBullets[i].hide == 0) {
                if(collision(j->worldCol, j->worldRow, j->width, j->height, playerBullets[i].worldCol, playerBullets[i].worldRow,playerBullets[i].width,playerBullets[i].height))
                {
                    
                    if(j->guard == 0 || (j->guard == 1 && j->direction == playerBullets[i].direction)) {
                        j->health -= 2;
                        playSoundB(enemyHit_data,enemyHit_length, 0);
                        playerBullets[i].hide = 1;
                    } else {
                        playSoundB(enemyDinked_data,enemyDinked_length, 0);
                        playerBullets[i].hide = 1;
                    }
                        if (j->health <= 0) {
                            j->hide = 1;
                            enemyCount--;
                        }
                    }
                }
            }
        for(int i = 0; i < PROTOBULLETCOUNT; i++) {
                if(protoBullets[i].hide == 0) {
                    if(collision(j->worldCol, j->worldRow, j->width, j->height, protoBullets[i].worldCol, protoBullets[i].worldRow,protoBullets[i].width,protoBullets[i].height))
                    {
                        j->health -= 4;
                        playSoundB(enemyHit_data,enemyHit_length, 0);
                        protoBullets[i].hide = 1;
                        if( j->health <= 0) {
                            j->hide = 1;
                            enemyCount--;
                        }
                    }
                }
            }
        if(player.direction == 1 && player.slash != 0) {
            if(collision(j->worldCol, j->worldRow, j->width,j->height, player.worldCol + 16, player.worldRow, player.width, player.height)) {
                j->health -= 6;
                    if( j->health <= 0) {
                            j->hide = 1;
                            enemyCount--;
                }
            }
        }
        if (player.direction == 2 && player.slash != 0) {
            if(collision(j->worldCol, j->worldRow, j->width,j->height, player.worldCol - 24, player.worldRow, player.width, player.height)) {
                j->health -= 12;
                    if(j->health <= 0) {
                            j->hide = 1;
                            enemyCount--;
                }
            }
        }
        if(abs(player.worldRow - j->worldRow) < 40 && abs(player.worldCol - j->worldCol) < 80) {
             if(player.worldCol - j->worldCol < 0) {
                j->direction = 2;
                if(j->cooldown >= 180) {
                    j->guardTimer = 0;
                    j->cooldown = rand() % 60;
                    j->guard = 0;
                }  
            }
    
            if (player.worldCol - j->worldCol > 0) {
                j->direction = 1;
                if(j->cooldown >= 180) {
                    j->guardTimer = 0;
                    j->cooldown = rand() % 60;
                    j->guard = 0;
                }  
            }
        }
        if(j->guardTimer >= 90) {
            j->guard = 1;
        }
        if(j->guard == 0 && j->bulletTimer >= 60 && j->guardTimer > 20) {
            if (j->direction == 1) {
                for (int i = 0; i < joeBulletCount; i++) {
                    if (joeBullets[i].hide == 1) {
                    joeBullets[i].worldRow = j->worldRow + (j->height/2) + 1;
                    joeBullets[i].worldCol = j->worldCol + j->width + 8;

                    joeBullets[i].hide = 0;
                    joeBullets[i].direction = 1;
                    break;
                    }
                }
            } if (j->direction == 2) {
                for (int i = 0; i < joeBulletCount; i++) {
                    if (joeBullets[i].hide == 1) {
                        joeBullets[i].worldRow = j->worldRow + (j->height/2) + 1 ;
                        joeBullets[i].worldCol = j->worldCol - 8;

                        joeBullets[i].hide = 0;
                        joeBullets[i].direction = 2;
                        break;
                    }
                }
            }
            j->bulletTimer = 0;
        }
        j->bulletTimer++;
        j->guardTimer++;
        j->cooldown++;   
    }
}

// Animates the Sniper Joes each frame
void animateSniperJoes() {
     for(int i = 0; i < sniperJoeCount; i++) {
        if(sniperJoes[i].direction == 1) {
            sniperJoes[i].aniState = 28;
        } else {
            sniperJoes[i].aniState = 24;
        }
        if(sniperJoes[i].aniCounter % 10 == 0) {
            if (sniperJoes[i].guard == 1) {
                sniperJoes[i].curFrame = 0;
            } 
            else if (sniperJoes[i].guard == 0 && sniperJoes[i].guardTimer <= 10 ) {
                sniperJoes[i].curFrame = 1;
            }
            else {
                sniperJoes[i].curFrame = 2;
            }
        }
          sniperJoes[i].aniCounter++;
    }
}
// draw the sniper Joes
void drawSniperJoes() {
    for(int i = 0; i < sniperJoeCount; i++) {
        if(sniperJoes[i].hide) {
            shadowOAM[shadowOAMIndex].attr0 |= ATTR0_HIDE;
            shadowOAMIndex++;
        } else {
            shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (sniperJoes[i].worldRow - vOff)) | ATTR0_SQUARE;
            shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (sniperJoes[i].worldCol - hOff)) | ATTR1_MEDIUM;
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((sniperJoes[i].curFrame * 4) + 4, sniperJoes[i].aniState);
            shadowOAMIndex++;  
        }
    }
}

// Initialize Joes' Bullets
void initJoeBullets() {
    for (int i = 0; i < joeBulletCount; i++) {
		joeBullets[i].height = 8;
		joeBullets[i].width = 8;
		joeBullets[i].worldRow = -joeBullets[i].height;
		joeBullets[i].worldCol = 0;
		joeBullets[i].cdel = 2;
        joeBullets[i].hide = 1;
	}
}



// Updates the Joes bullets every frame
void updateJoeBullet(ANISPRITE* p) {
    if (p->hide == 0) {
        if (p->direction == 1) {
            if (p->worldCol + p-> width - hOff < (MAPWIDTH /2)) {
                p->worldCol += p->cdel;
            } else {
                p->hide = 1;
            }
        }
        if (p ->direction == 2) {
            if (p->worldCol - hOff >= 0 ) {
                p->worldCol -= p->cdel;
            } else {
                p->hide = 1;
            }
        }
    }
}
// Draws Joes' bullets
void drawJoeBullets() {
     for(int i = 0; i < joeBulletCount; i++) {
        if (joeBullets[i].hide) {
            shadowOAM[shadowOAMIndex].attr0 |= ATTR0_HIDE;
            shadowOAMIndex++;
        } else {
            shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (joeBullets[i].worldRow - vOff)) | ATTR0_SQUARE;
            shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (joeBullets[i].worldCol - hOff)) | ATTR1_TINY;
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(25 , 27);
            shadowOAMIndex++;
        }
    }
}

// Initialize the octo eye enemies
void initHoriOctoEyes() {
    for(int i = 0; i < horiOctoEyeCount; i++) {
        horiOctoEyes[i].width = 16;
        horiOctoEyes[i].height = 16;
        horiOctoEyes[i].health = 8;
        horiOctoEyes[i].hide = 0;
        horiOctoEyes[i].rdel = 1;
        horiOctoEyes[i].cdel = 1;
        //"no" direction as default
        horiOctoEyes[i].direction = 0;
        horiOctoEyes[i].moveCheck = 0;
        horiOctoEyes[i].cooldown = 0;
        if(levelsCleared == 0) {
            if(i == 0) {
                horiOctoEyes[i].worldCol = 0;
                horiOctoEyes[i].worldRow = 64;
            } else if (i == 1) {
                horiOctoEyes[i].worldCol = 80;
                horiOctoEyes[i].worldRow = 32;
            } else if (i == 2) {
                horiOctoEyes[i].worldCol = 224;
                horiOctoEyes[i].worldRow = 82;
            } else if (i == 3) {
                horiOctoEyes[i].worldCol = 316;
                horiOctoEyes[i].worldRow = 82;
            } else if (i == 4) {
                horiOctoEyes[i].worldCol = 496;
                horiOctoEyes[i].worldRow = 92;
            } else if (i == 5) {
                horiOctoEyes[i].worldCol = 496;
                horiOctoEyes[i].worldRow = 112;
            }
        }
        if(levelsCleared == 4) {
            if(i == 0) {
                horiOctoEyes[i].worldCol = 128;
                horiOctoEyes[i].worldRow = 32;
            } else if (i == 1) {
                horiOctoEyes[i].worldCol = 160;
                horiOctoEyes[i].worldRow = 72;
            } else if (i == 2) {
                horiOctoEyes[i].worldCol = 304;
                horiOctoEyes[i].worldRow = 88;
            } else if (i == 3) {
                horiOctoEyes[i].worldCol = 368;
                horiOctoEyes[i].worldRow = 48;
            } else if (i == 4) {
                horiOctoEyes[i].worldCol = 368;
                horiOctoEyes[i].worldRow = 64;
            } else if (i == 5) {
                horiOctoEyes[i].worldCol = 400;
                horiOctoEyes[i].worldRow = 32;
            }
        }
    }
}

// Updates octo eye enemies each frame
void updateHoriOctoEye(ANISPRITE* o) {
    // Overview of octoeyes. Though they still depend on the player's position to act, they work completely differently from
    // other two enemies. When the player is to the left of them, they move to the left until they hit a wall, if the player is
    // the right of them, they move right until they hit a wall.
    if(o->hide == 0) {
        for(int i = 0; i < PLAYERBULLETCOUNT; i++) {
            if(playerBullets[i].hide == 0) {
                if(collision(o->worldCol, o->worldRow, o->width, o->height, playerBullets[i].worldCol, playerBullets[i].worldRow,playerBullets[i].width,playerBullets[i].height))
                {
                    playSoundB(enemyHit_data,enemyHit_length, 0);
                    playerBullets[i].hide = 1;
                    o->health -= 2;
                    if (o->health <= 0) {
                            o->hide = 1;
                            enemyCount--;
                    }
                }
            }
        }
        for(int i = 0; i < PROTOBULLETCOUNT; i++) {
                if(protoBullets[i].hide == 0) {
                    if(collision(o->worldCol, o->worldRow, o->width, o->height, protoBullets[i].worldCol, protoBullets[i].worldRow,protoBullets[i].width,protoBullets[i].height))
                    {
                        o->health -= 4;
                        playSoundB(enemyHit_data,enemyHit_length, 0);
                        protoBullets[i].hide = 1;
                        if( o->health <= 0) {
                            o->hide = 1;
                            enemyCount--;
                        }
                    }
                }
            }
        if(player.direction == 1 && player.slash != 0) {
            if(collision(o->worldCol, o->worldRow, o->width,o->height, player.worldCol + 16, player.worldRow, player.width, player.height)) {
                o->health -= 6; 
                    if( o->health <= 0) {
                            o->hide = 1;
                            enemyCount--;
                }
            }
        }
        if (player.direction == 2 && player.slash != 0) {
            if(collision(o->worldCol, o->worldRow, o->width,o->height, player.worldCol - 16, player.worldRow, player.width, player.height)) {
                o->health -= 12;
                    if(o->health <= 0) {
                            o->hide = 1;
                            enemyCount--;
                }
            }
        }

        if(abs(player.worldRow - o->worldRow) < 16 && abs(player.worldCol - o->worldCol) < 72) {
             if( player.worldCol < o->worldCol && o->moveCheck == 0 ) {
                o->direction = 2;
                o->moveCheck = 1;
                o->cooldown = 0;          
            } 
            if ( player.worldCol > o->worldCol && o->moveCheck == 0) {
                o->direction = 1;
                o->moveCheck = 1;
                o->cooldown = 0;
                 
            }
        }
       

        if( o->direction == 2 && o->worldCol > 0 && collisionMap[OFFSET(o->worldCol - o->cdel - 1, o->worldRow 
                    , MAPWIDTH)]
                && collisionMap[OFFSET(o->worldCol - o->cdel - 1, o->worldRow + o->height - 1 
                    , MAPWIDTH)]
            ) {
                if(o->cooldown >= 20) {
                    o->worldCol -= o->cdel;
                }  
            }  else if ( o->direction == 1 && (o->worldCol + o->width < MAPWIDTH) &&collisionMap[OFFSET(o->worldCol + o->cdel + o->width - 1, o->worldRow 
                    , MAPWIDTH)]
                && collisionMap[OFFSET(o->worldCol + o->cdel + o->width - 1, o->worldRow + o->height - 1 
                    , MAPWIDTH)])
                     {
                        if(o->cooldown >= 20) {
                            o->worldCol += o->cdel;
                }  
                    } else {
                        o->moveCheck = 0;
                    }
     o->cooldown++; 
    }
       
        
        
}   

void animateHoriEyes() {
    for(int i = 0; i < horiOctoEyeCount; i++) {
        horiOctoEyes[i].aniState = 0;
        if(horiOctoEyes[i].aniCounter % 10 == 0) {
            if (horiOctoEyes[i].moveCheck == 0) {
                horiOctoEyes[i].curFrame = 0;
            } 
            else if (horiOctoEyes[i].cooldown < 20 ) {
                horiOctoEyes[i].curFrame = 1;
            }
            else {
                horiOctoEyes[i].curFrame = 2;
            }
        }
          horiOctoEyes[i].aniCounter++;
    }
}

// Draws the octo eye enemies each frame
void drawHoriOctoEyes() {
    for(int i = 0; i < horiOctoEyeCount; i++) {
        if (horiOctoEyes[i].hide) {
            shadowOAM[shadowOAMIndex].attr0 |= ATTR0_HIDE;
            shadowOAMIndex++;
        } else {
            shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (horiOctoEyes[i].worldRow - vOff)) | ATTR0_SQUARE;
            shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (horiOctoEyes[i].worldCol - hOff)) | ATTR1_SMALL;
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(horiOctoEyes[i].aniState , (horiOctoEyes[i].curFrame*2) + 24);
            shadowOAMIndex++;
        }
        
    }
}

// Initialize the octo eye enemies
void initVertOctoEyes() {
    for(int i = 0; i < vertOctoEyeCount; i++) {
        vertOctoEyes[i].width = 16;
        vertOctoEyes[i].height = 16;

        vertOctoEyes[i].health = 8;
        vertOctoEyes[i].hide = 0;
        vertOctoEyes[i].rdel = 1;
        vertOctoEyes[i].cdel = 1;
        //"no" direction as default
        vertOctoEyes[i].direction = 0;
        vertOctoEyes[i].moveCheck = 0;
        vertOctoEyes[i].cooldown = 0;
        if(levelsCleared == 1) {
            if(i == 0) {
                vertOctoEyes[i].worldCol = 96;
                vertOctoEyes[i].worldRow = 136;
            }
            else if(i == 1) {
                vertOctoEyes[i].worldCol = 176;
                vertOctoEyes[i].worldRow = 120;
            }
            else if(i >= 2 && i < 6) {
                vertOctoEyes[i].worldCol = 264 + (16*(i-2));
                vertOctoEyes[i].worldRow = 49;
            } else if (i == 6) {
                vertOctoEyes[i].worldCol = 424;
                vertOctoEyes[i].worldRow = 64;
            } else if (i == 7) {
                vertOctoEyes[i].worldCol = 456;
                vertOctoEyes[i].worldRow = 32;
            } else if (i == 8) {
                vertOctoEyes[i].worldCol = 64;
                vertOctoEyes[i].worldRow = 136;
            } else if (i == 9) {
                vertOctoEyes[i].worldCol = 208;
                vertOctoEyes[i].worldRow = 136;
            }   
        }
        if(levelsCleared == 4) {
            if(i == 0) {
                vertOctoEyes[i].worldCol = 32;
                vertOctoEyes[i].worldRow = 48;
            }
            else if (i == 1) {
                vertOctoEyes[i].worldCol = 32;
                vertOctoEyes[i].worldRow = 0;
            }
            else if (i == 2) {
                vertOctoEyes[i].worldCol = 192;
                vertOctoEyes[i].worldRow = 48;
            } else if (i == 3) {
                vertOctoEyes[i].worldCol = 256;
                vertOctoEyes[i].worldRow = 48;
            } else if (i == 4) {
                vertOctoEyes[i].worldCol = 496;
                vertOctoEyes[i].worldRow = 24;
            } 
        }
    }

}

// Updates octo eye enemies each frame
void updateVertOctoEye(ANISPRITE* o) {
    // Similar to the other octo eye enemies, except these move up and down instead of left and right
     if(o->hide == 0) {
        for(int i = 0; i < PLAYERBULLETCOUNT; i++) {
            if(playerBullets[i].hide == 0) {
                if(collision(o->worldCol, o->worldRow, o->width, o->height, playerBullets[i].worldCol, playerBullets[i].worldRow,playerBullets[i].width,playerBullets[i].height))
                {
                    playSoundB(enemyHit_data,enemyHit_length, 0);
                    playerBullets[i].hide = 1;
                    o->health -= 2;
                    if (o->health <= 0) {
                            o->hide = 1;
                            enemyCount--;
                    }
                }
            }
        }
        for(int i = 0; i < PROTOBULLETCOUNT; i++) {
                if(protoBullets[i].hide == 0) {
                    if(collision(o->worldCol, o->worldRow, o->width, o->height, protoBullets[i].worldCol, protoBullets[i].worldRow,protoBullets[i].width,protoBullets[i].height))
                    {
                        o->health -= 4;
                        playSoundB(enemyHit_data,enemyHit_length, 0);
                        protoBullets[i].hide = 1;
                        if( o->health <= 0) {
                            o->hide = 1;
                            enemyCount--;
                        }
                    }
                }
            }
        if(player.direction == 1 && player.slash != 0) {
            if(collision(o->worldCol, o->worldRow, o->width,o->height, player.worldCol + 16, player.worldRow, player.width, player.height)) {
                o->health -= 6; 
                    if( o->health <= 0) {
                            o->hide = 1;
                            enemyCount--;
                }
            }
        }
        if (player.direction == 2 && player.slash != 0) {
            if(collision(o->worldCol, o->worldRow, o->width,o->height, player.worldCol - 16, player.worldRow, player.width, player.height)) {
                o->health -= 12;
                    if(o->health <= 0) {
                            o->hide = 1;
                            enemyCount--;
                }
            }
        }

        
        if(abs(player.worldRow - o->worldRow) < 80 && abs(player.worldCol - o->worldCol) < 24) {

            if (player.worldRow - o->worldRow > 0 && o->moveCheck == 0) {
                o->direction = 1;
                o->moveCheck = 1;
                o->cooldown = 0;      
            }

            if (player.worldRow - o->worldRow < 0 && o->moveCheck == 0 ) {
                o->direction = 2;
                o->moveCheck = 1;
                o->cooldown = 0;           
            }
        } 

        if(o->direction == 2 && collisionMap[OFFSET(o->worldCol , o->worldRow - o->rdel 
                    , MAPWIDTH)]
                && collisionMap[OFFSET(o->worldCol + o->width - 1, o->worldRow - o->rdel 
                    , MAPWIDTH)]
            ) {
                if(o->cooldown >= 20) {
                    o->worldRow -= o->rdel;
                }
         
            }
        else if (o->direction == 1 && collisionMap[OFFSET(o->worldCol , o->worldRow - o->rdel + o->height + 1
             , MAPWIDTH)]
             && collisionMap[OFFSET(o->worldCol  + o->width - 1, o->worldRow + o->height 
            , MAPWIDTH)])
                {
                    if(o->cooldown >= 20) {
                           o->worldRow += o->rdel;
                    }
             
                } else 
                {
                        o->moveCheck = 0;
                }
        o->cooldown++;
    }
        
        
        
}   

// Animates the vertical octo eye enemies each frame
void animateVertEyes() {
    for(int i = 0; i < vertOctoEyeCount; i++) {
        vertOctoEyes[i].aniState = 2;
        if(vertOctoEyes[i].aniCounter % 10 == 0) {
            if (vertOctoEyes[i].moveCheck == 0) {
                vertOctoEyes[i].curFrame = 0;
            } 
            else if (vertOctoEyes[i].cooldown < 20 ) {
                vertOctoEyes[i].curFrame = 1;
            }
            else {
                vertOctoEyes[i].curFrame = 2;
            }
        }
          vertOctoEyes[i].aniCounter++;
    }
}
// Draws the octo eye enemies each frame
void drawVertOctoEyes() {
    for(int i = 0; i < vertOctoEyeCount; i++) {
        if (vertOctoEyes[i].hide) {
            shadowOAM[shadowOAMIndex].attr0 |= ATTR0_HIDE;
            shadowOAMIndex++;
        } else {
            shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (vertOctoEyes[i].worldRow - vOff)) | ATTR0_SQUARE;
            shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (vertOctoEyes[i].worldCol - hOff)) | ATTR1_SMALL;
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(vertOctoEyes[i].aniState , 24 + (vertOctoEyes[i].curFrame*2));
            shadowOAMIndex++;
        }
        
    }
}

// Initializes the ready display timer
void initReady() {
    readyTimer = 140;
    for(int i = 0; i < READYCHARCOUNT; i++) {
        ready[i].worldRow = SCREENHEIGHT/2;
        ready[i].worldCol = 100 + (10*i);
        ready[i].numFrames = 2;
        ready[i].aniCounter = 12;
        ready[i].hide = 0;
    }
}

// Updates the ready display each frame
void updateReady() {
    for(int i = 0; i < READYCHARCOUNT; i++) {
        if(ready[i].aniCounter % 10 == 0 && readyTimer >= 0) {
            if(ready[i].curFrame < ready[i].numFrames - 1) {
                ready[i].curFrame++;
            } else {
                ready[i].curFrame = 0;
            }
        } else if (ready[i].aniCounter % 10 == 0 && readyTimer < 0) {
            ready[i].hide = 1;
        } 
        ready[i].aniCounter++;
    }
    readyTimer--;
}

// Draws the ready display each frame
void drawReady() {
    for(int i = 0; i < READYCHARCOUNT; i++) {
        if (ready[i].hide) {
            shadowOAM[shadowOAMIndex].attr0 |= ATTR0_HIDE;
            shadowOAMIndex++;
        } else {
            shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (ready[i].worldRow)) | ATTR0_SQUARE;
            shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (ready[i].worldCol)) | ATTR1_TINY;
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(20 + i, 8 + ready[i].curFrame );
            shadowOAMIndex++;
        }
    }
}

// Initializes the player's bullets
void initProtoBullets() {
    for (int i = 0; i < PROTOBULLETCOUNT; i++) {
		protoBullets[i].height = 16;
		protoBullets[i].width = 8;
		protoBullets[i].worldRow = -protoBullets[i].height;
		protoBullets[i].worldCol = 0;
		protoBullets[i].cdel = 2;
        protoBullets[i].hide = 1;
	}
}

// fires a bullet to the left when player fires facing left
void fireProtoBulletLeft() {
    for (int i = 0; i < PROTOBULLETCOUNT; i++) {
        if (protoBullets[i].hide == 1) {
            protoBullets[i].worldRow = player.worldRow + (player.height/2) - 5;
            protoBullets[i].worldCol = player.worldCol - 22;

            protoBullets[i].hide = 0;
            protoBullets[i].direction = 2;
            break;
        }
    }
}

// Sets bullet to the right when player fires bullet and is facing right
void fireProtoBulletRight() {
    for (int i = 0; i < PROTOBULLETCOUNT; i++) {
        if (protoBullets[i].hide == 1) {
            protoBullets[i].worldRow = player.worldRow + (player.height/2) - 5;
            protoBullets[i].worldCol = player.worldCol + player.width + 8;

            protoBullets[i].hide = 0;
            protoBullets[i].direction = 1;
            break;
        }
    }
}

// Updates the bullet's position each frame
void updateProtoBullet(ANISPRITE* p) {
    if (p->hide == 0) {
        if (p->direction == 1) {
            if (p->worldCol + p-> width - hOff < (MAPWIDTH /2)) {
                p->worldCol += p->cdel;
            } else {
                p->hide = 1;
            }
        }
        if (p ->direction == 2) {
            if (p->worldCol - hOff >= 0 ) {
                p->worldCol -= p->cdel;
            } else {
                p->hide = 1;
            }
        }
    }
}

// Draw's the player's bullets
void drawProtoBullets() {
     for(int i = 0; i < PROTOBULLETCOUNT; i++) {
        if (protoBullets[i].hide) {
            shadowOAM[shadowOAMIndex].attr0 |= ATTR0_HIDE;
            shadowOAMIndex++;
        } else {
            shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (protoBullets[i].worldRow - vOff)) | ATTR0_SQUARE;
            shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (protoBullets[i].worldCol - hOff)) | ATTR1_TINY;
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(25 , 26);
            shadowOAMIndex++;
        }
    }
}

// Initializes the player's shield
void initProtoShield() {
    protoShield.hide = 1;
    protoShield.width = 8;
    protoShield.height =  32;
    protoShield.worldCol = 1;
    protoShield.worldRow = 1;
}

// Updates the player's shield each frame
void updateProtoShield() {
    if(player.form == 3 && player.bulletTimer < 50) {
        protoShield.hide = 1;
    } else if (player.form == 3) {
        protoShield.hide = 0;
    }
    if (protoShield.hide == 0) {
        if(player.direction == 1) {
            if(player.onLadder == 1) {
                protoShield.worldCol = player.worldCol + player.width - 6;
                protoShield.worldRow = player.worldRow + (player.height/2) - 6;
            } else if (isFalling == 1){
                protoShield.worldCol = player.worldCol + player.width + 4;
                protoShield.worldRow = player.worldRow + (player.height/2) - 6;
            } else if (player.slide == 1) {
                protoShield.worldRow = player.worldRow + (player.height/2) ;
                protoShield.worldCol = player.worldCol + player.width + 8;
            } else {
                protoShield.worldCol = player.worldCol + player.width - 1 ;
                protoShield.worldRow = player.worldRow + (player.height/2) - 6;
            }
            
        }
        if(player.direction == 2) {
            if(player.slide == 2) {
                protoShield.worldCol = player.worldCol - 7;
                protoShield.worldRow = player.worldRow + (player.height/2);
            } else {
                protoShield.worldCol = player.worldCol - 10;
                protoShield.worldRow = player.worldRow + (player.height/2) - 6;
            }
        }
        for(int i = 0; i < moleBulletCount; i++) {
            if(moleBullets[i].hide == 0) {
                if(collision(protoShield.worldCol,protoShield.worldRow ,protoShield.width,protoShield.height,
                    moleBullets[i].worldCol,moleBullets[i].worldRow,moleBullets[i].width,moleBullets[i].height)) {
                        playSoundB(enemyDinked_data,enemyDinked_length, 0);
                        moleBullets[i].hide = 1;
                }
            }
        }
        for(int i = 0; i < joeBulletCount; i++) {
            if(joeBullets[i].hide == 0) {
                if(collision(protoShield.worldCol,protoShield.worldRow ,protoShield.width,protoShield.height,
                    joeBullets[i].worldCol,joeBullets[i].worldRow,joeBullets[i].width,joeBullets[i].height)) {
                        playSoundB(enemyDinked_data,enemyDinked_length, 0);
                        joeBullets[i].hide = 1;
                }
            }
        }
    }
}
// Draws the player's shield each frame
void drawProtoShield() {
        if (protoShield.hide) {
            shadowOAM[shadowOAMIndex].attr0 |= ATTR0_HIDE;
            shadowOAMIndex++;
        } else {
            shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (protoShield.worldRow - vOff)) | ATTR0_TALL;
            shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (protoShield.worldCol - hOff)) | ATTR1_TINY;
            if(player.direction == 1) {
                shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(25 , 24);
                shadowOAMIndex++;
            }
            else if(player.direction == 2) {
               shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(24 , 24);
               shadowOAMIndex++; 
            }
            
        }
}

// Initializes the Cheat for the game
void initCheat() {
    cheatTimer = 0;
}

// Updates the cheat each frame
void updateCheat() {
    //Cheat 
    if(BUTTON_HELD(BUTTON_L) && BUTTON_HELD(BUTTON_R) && BUTTON_HELD(BUTTON_UP) && player.form != 3) {
        usedCheat = 1;
        cheatTimer = 420;
        pauseSound();
        playSoundB(protoMode_data,protoMode_length, 0);
        player.form = 3;
    }
    if(player.form == 3) {
        cheatTimer--;
    }
    if(player.form == 3 && cheatTimer <= 0 && cheatTimerCheck == 0) {
        unpauseSound();
        cheatTimerCheck = 1;
    }
}

// Logic for when the player dies and the game pauses and restarts
void updateDeath() {
    if(playerHealth <= 0) {
        stopSound();
        hurt.hide = 1;
        deathCheck = 1;
        player.form = 1;
        if(player.direction == 1) {
            player.aniState = 8;
            player.curFrame = 2;
        }
        if(player.direction == 2) {
            player.aniState = 8;
            player.curFrame = 3;
        }
        protoShield.hide = 1;
        deathTranTimer = 30;
        playerLives--;
        playerHealth = 20;
    }
    if(deathTranTimer <= 0 && deathCheck != 0 && deathSoundCheck == 0) {
        playSoundB(deathSound_data, deathSound_length, 0);
        deathSoundCheck = 1;
        player.hide = 1;
        deathTimer = 180;
    }
    if(deathTimer < 0 && deathCheck != 0 && deathTranTimer < 0) {
        initReady();
        initCheat();
        initHealth();
        initGamePlayer();
        initMoleBullets();
        initJoeBullets();
        playSoundA(gameSong_data,gameSong_length, 1);
        deathCheck = 0;
        deathSoundCheck = 0;
    }
    deathTranTimer--;
    deathTimer--;
}

// Initializes a flashing ring around the player which indicates they have been injured, ends when the player is once again vulnerable
void initHurt() {
    hurt.curFrame = 0;
    hurt.aniCounter = 6;
    hurt.hide = 1;
}

// Causes the hurt animation to flash each frame
void updateHurt() {
    if(playerHealth > 0 && deathCheck == 0) {
        if(iFramesTimer < 90) {
        hurt.hide = 0;
        } else {
            hurt.hide = 1;
        }
        if(hurt.hide == 0) {
            hurt.worldCol = player.worldCol;
            hurt.worldRow = player.worldRow;
        if(hurt.aniCounter % 6 == 0) {
            if (hurt.curFrame < 1) {
                hurt.curFrame++;
            } else {
                hurt.curFrame = 0;
            }
        }
        hurt.aniCounter++;
    }
} else {
    hurt.hide = 1;
}
    }
   

// Draws the flashing hurt indicator each frame
void drawHurt() {
    if(hurt.hide) {
            shadowOAM[shadowOAMIndex].attr0 |= ATTR0_HIDE;
            shadowOAMIndex++;
        } else {
            shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (hurt.worldRow - vOff)) | ATTR0_SQUARE;
            shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (hurt.worldCol - hOff - 2)) | ATTR1_MEDIUM;
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(20 + (hurt.curFrame * 4), 10);
            shadowOAMIndex++;
    }
}

void initWin() {
    winTimer = 300;
    winCheck = 0;
    winSoundCheck = 0;
}
void updateWin() {
    if(enemyCount <= 0) {
        winCheck = 1;
        winTimer--;
    }
    if(winSoundCheck == 0 && winCheck == 1) {
        stopSound();
        playSoundA(winSong_data,winSong_length, 0);
        winSoundCheck = 1;
    }
}