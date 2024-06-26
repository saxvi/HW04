// structs
    // enemy
typedef struct {
    int x;
    int y;
    int oldx;
    int oldy;
    int xvel;
    int yvel;
    int width;
    int height;
    unsigned short color;
    int active;
} ENEMY;

    // player 
typedef struct {
    int x;
    int y;
    int oldx;
    int oldy;
    int xvel;
    int yvel;
    int width;
    int height;
    unsigned short color;
    int powerup;
} PLAYER;


// function prototypes
void initGame();
void initPlayer();
void initEnemy();
void initPowerup();

void updateGame();
void updatePlayer();
void updateEnemy(ENEMY* e);
void updateCoins(ENEMY* c);
void updateBG();

void drawGame();
void drawPlayer();
void drawEnemy(ENEMY* e);
void drawCoins(ENEMY* c);


// constants

#define numEnemies 10
#define numCoins 10

// variables
extern PLAYER player;
extern ENEMY enemies[numEnemies];
extern int lives;
extern int score;
extern int t;

// custom game colors
#define NUMCOLORS 7
// this does an enum trick to make them the last indeces of the palette
enum {BLACKID=(256 - NUMCOLORS), REDID, BLUEID, YELLOWID, GREENID, GRAYID, ORANGEID};
extern unsigned short colors[NUMCOLORS];