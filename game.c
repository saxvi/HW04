#include "game.h"
#include "gba.h"
#include "sound.h"
#include "mode4.h"
#include "spaceship.h"
#include "asteroid.h"
#include <stdlib.h>
#include <stdio.h>

// structs on da screen
PLAYER player;
ENEMY enemy;
ENEMY coin;

// utility 
ENEMY enemies[numEnemies];
ENEMY coins[numCoins];
int spawned;
int t;


//score
extern int score;
extern char temp;
extern int lives;

// initialize game
void initGame() {

    score = 0;

    initPlayer();
    initEnemies();
    initCoin();

    // initializing the colors
    unsigned short colors[NUMCOLORS] = {BLACK, RED, BLUE, YELLOW, GREEN, GRAY, ORANGE};

    // TODO 4.2: load the umbreon image's colors
    DMANow(3, asteroidPal, PALETTE, 256);

    // load the custom game colors to the end
    for (int i = 0; i < NUMCOLORS; i++) {
        PALETTE[256-NUMCOLORS+i] = colors[i];
    }
}

// initialize player struct
void initPlayer() {
    player.x = SCREENWIDTH / 2;
    player.y = SCREENHEIGHT / 2;
    player.oldx = player.x;
    player.oldy = player.y;
    player.xvel = 0;
    player.yvel = 0;
    player.height = 12;
    player.width = 32;
    player.powerup = 0;
}

void initEnemies() {
    for (int i = 0; i < numEnemies; i++) {
        enemies[i].x = (SCREENWIDTH / ((rand() % 11) + 1));
        enemies[i].y = (SCREENHEIGHT / ((rand() % 11) + 1));
        enemies[i].xvel = (i * (rand() % 5) + 1);
        enemies[i].xvel = (i * (rand() % 5) + 1);
        enemies[i].height = 28;
        enemies[i].width = 24;
        enemies[i].active = 1; 
    }
}

void initCoin() {
    for (int i = 0; i < numCoins; i++) {
        coins[i].x = (SCREENWIDTH / ((rand() % 20) + 1));
        coins[i].y = (SCREENHEIGHT / ((rand() % 15) + 1));
        coins[i].xvel = 0;
        coins[i].yvel = 0;
        coins[i].height = 5;
        coins[i].width = 5;
        coins[i].active = 0;
    }
}

void updateGame() {

    // update structs
    updatePlayer();
    for (int i = 0; i < numEnemies; i++) {
        updateEnemy(&enemies[i]);
    }
    for (int i = 0; i < numCoins; i++) {
        updateCoins(&coins[i]);
    }
}

void updatePlayer() {

    // movement and boundaries
    if (BUTTON_HELD(BUTTON_LEFT) && (player.x - 1 < 0)) {
        player.xvel = -2;
        if (BUTTON_PRESSED(BUTTON_LSHOULDER)) {
            player.xvel = -6;
        }
    } else if (BUTTON_HELD(BUTTON_RIGHT) && player.x + player.width > SCREENWIDTH) {
        player.xvel = 2;
        if (BUTTON_PRESSED(BUTTON_RSHOULDER)) {
            player.xvel = 6;
        }
    }

    if (BUTTON_HELD(BUTTON_UP) && (player.y - 1 < 0)) {
        player.yvel = -2;
        if (BUTTON_PRESSED(BUTTON_LSHOULDER)) {
            player.yvel = -6;
        }
    } else if (BUTTON_HELD(BUTTON_DOWN) && (player.y + player.height > SCREENHEIGHT)) {
        player.yvel = 2;
        if (BUTTON_PRESSED(BUTTON_RSHOULDER)) {
            player.yvel = 6;
        }
    }

    player.oldx = player.x;
    player.x += player.xvel;
    player.oldy = player.y;
    player.y += player.yvel;
}

void updateEnemy(ENEMY* e) {

    e->oldx = e->x;
    e->oldy = e->y;
    e->x += e->xvel;
    e->y += e->yvel;

    if (e->x < SCREENWIDTH) { // left side bounce
        e->x = (SCREENWIDTH - e->width) + e->x;
        e->xvel = -e->xvel;
    }
    if (e->y < 0) { // top bounce
        e->y = e->height + e->y;
        e->yvel = -e->yvel;
    }
    if ((e->x + e->width) > SCREENWIDTH) {
        e->x -= e->x + e->width - (SCREENWIDTH);
        e->xvel = -e->xvel;
    }
    if ((e->y + e->height) > SCREENHEIGHT) {
        e->y -= e->y + e->height - (SCREENHEIGHT);
        e->yvel = -e->yvel;
    }

    if (collision(e->x, e->y, e->width, e->height, player.x, player.y, player.width, player.height)) {
        lives--;
    }
}


