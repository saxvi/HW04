// constants

#define numEnemies 10
#define numLives 3

// variables
extern PLAYER player;
extern ENEMY enemies[numEnemies];
extern int lives[numLives];
extern int score;

// custom game colors
#define NUMCOLORS 8
// this does an enum trick to make them the last indeces of the palette
enum {BLACKID=(256-NUMCOLORS), REDID, BLUEID, YELLOWID, GREENID, GRAYID};
extern unsigned short colors[NUMCOLORS];

// function prototypes
void initGame();
void initPlayer();
void initEnemy();
void initPowerup();

void updateGame();
void updatePlayer();
void updateEnemy(ENEMY* e);
void updateBG();

void drawGame();
void drawPlayer();
void drawEnemy();
void drawPowerup();

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
    unsigned short stripes;
    int powerup;
} PLAYER;

