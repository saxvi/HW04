// constants

#define bufferWidth 7
#define borderWidth 52
#define floorWidth  137
#define numEnemies 10

// variables
extern PLAYER player;
extern ENEMY enemies[numEnemies];
extern int score;

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

