
// Constants
#define MAPHEIGHT 256
#define MAPWIDTH 512
#define HEALTHCOUNT 10
#define CHARCOUNT 4
#define MAXLIVES 9
#define PLAYERBULLETCOUNT 3
#define IFRAMECOUNT 90
#define READYCHARCOUNT 5
#define PROTOBULLETCOUNT 5
#define MAXOBJECTCOUNT 10
#define MAXBULLETCOUNT 20
// defines gravity strength and player jump strength
#define GRAVITY -32
#define GRAVITYFACTOR 0.1
#define JUMPVELOCITY 50
#define JUMPHOLDVELOCITY 3

// Structs
// Generic struct for animated sprite
typedef struct
{
    int worldRow;
    int worldCol;
    int rdel;
    int cdel;
    int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
    int hide;

    // Slide related
    int slide;
    int slideTimer;
    // Used to determine bullet and slash swing direction
    int direction;

    // Check to see if player is on the ladder
    int onLadder;

    // Player stun variables
    int hurt;
    int hurtTimer;

    // Weapon toggle
    int form;

    // slash Mechanics
    int slashTimer;
    int slash;

    int bulletTimer;
    // gravity related
    int velocity;
    int jumpTimer;
} PLAYER;

// Variables
extern int hOff;
extern int vOff;
extern int playerHealth;
extern int playerLives;
extern int toggleTimer;
extern int iFramesTimer;
extern int enemyCount;
extern int levelsCleared;
extern int usedCheat;
extern int winCheck;
extern int winTimer;
extern int readyFrameOverride;
extern int deathTimer;
extern int deathTranTimer;
extern int deathCheck;
extern int deathSoundCheck;
extern int cheatTimer;
extern PLAYER player;
extern ANISPRITE health[HEALTHCOUNT];
extern ANISPRITE text[CHARCOUNT];
extern ANISPRITE lives[MAXOBJECTCOUNT];
extern ANISPRITE smallHealthPickup[MAXOBJECTCOUNT];
extern ANISPRITE largeHealthPickup[MAXOBJECTCOUNT];
extern ANISPRITE playerBullets[PLAYERBULLETCOUNT];
extern ANISPRITE moleGuys[MAXOBJECTCOUNT];
extern ANISPRITE moleBullets[MAXBULLETCOUNT];
extern ANISPRITE sniperJoes[MAXOBJECTCOUNT];
extern ANISPRITE joeBullets[MAXBULLETCOUNT];
extern ANISPRITE horiOctoEyes[MAXOBJECTCOUNT];
extern ANISPRITE vertOctoEyes[MAXOBJECTCOUNT];



// Prototypes
void initGame();
void initGamePlayer();
void initHealth();
void initText();
void initLives();
void initSmallHealthPickups();
void initLargeHealthPickups();
void initPlayerBullets();
void initMoleGuys();
void initMoleBullets();
void initSniperJoes();
void initJoeBullets();
void initHoriOctoEyes();
void initVertOctoEyes();
void updateGame();
void updatePlayer();
void updatePlayerBullet(ANISPRITE* p);
void updateMoleGuy(ANISPRITE* m);
void updateMoleBullet(ANISPRITE* p);
void updateSniperJoe(ANISPRITE* j);
void updateJoeBullet(ANISPRITE* p);
void updateHoriOctoEye(ANISPRITE* o);
void updateVertOctoEye(ANISPRITE* o);
void animateGamePlayer();
void drawGame();
void drawPlayer();
void drawHealth();
void drawText();
void drawLives();
void drawSmallHealthPickups();
void drawLargeHealthPickups();
void drawPlayerBullets();
void drawMoleGuys();
void drawMoleBullets();
void drawSniperJoes();
void drawJoeBullets();
void drawHoriOctoEyes();
void drawVertOctoEyes();
void resumeGame();
void firePlayerBulletLeft();
void firePlayerBulletRight();
void initReady();
void initHurt();
void initProtoBullets();
void initProtoShield();
void updateReady();
void updateCheat();
void updateDeath();
void updateHurt();
void updateProtoBullet();
void animateHoriEyes();
void animateVertEyes();
void updateProtoShield();
void animatePickups();
void animateSniperJoes();
void drawHurt();
void drawReady();
void drawProtoBullets();
void drawProtoShield();
void fireProtoBulletRight();
void fireProtoBulletLeft();
void initWin();
void updateWin();


