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
ENEMY powerup;

// utility 
ENEMY enemies[numEnemies];
int spawned;
int t;


//score
extern int score;
extern char temp;

// initialize game
void initGame() {

    score = 0;

    initPlayer();
    initEnemies();
    //initPowerup();

    // initializing the colors
    unsigned short colors[NUMCOLORS] = {BLACK, RED, BLUE, YELLOW, GREEN, GRAY};

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

void updateGame() {

    // update structs
    updatePlayer();
    for (int i = 0; i < numEnemies; i++) {
        updateEnemy(&enemies[i]);
    }
}

void updatePlayer() {

    // movement and boundaries
    if (BUTTON_HELD(BUTTON_LEFT) && (player.x - 1 < 0)) {
        player.xvel = -2;
    } else if (BUTTON_HELD(BUTTON_RIGHT) && player.x + player.width > SCREENWIDTH) {
        player.xvel = 2;
    }
    if (BUTTON_HELD(BUTTON_UP) && (player.y - 1 < 0)) {
        player.yvel = -2;
    } else if (BUTTON_HELD(BUTTON_DOWN) && (player.y + player.height > SCREENHEIGHT)) {
        player.yvel = 2;
    }

}


