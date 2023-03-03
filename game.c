#include "game.h"
#include "gba.h"
#include "sound.h"
#include "mode4.h"
#include "spaceship.h"
#include "asteroid.h"
#include "background.h"
#include "USETHISCOIN.h"
#include <stdlib.h>
#include <stdio.h>

// structs on da screen
PLAYER player;
ENEMY enemy;
ENEMY coin;
ENEMY enemies[numEnemies];
ENEMY coins[numCoins];

// time tracker
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

    DMANow(3, asteroidPal, PALETTE, 256);

    // load the custom game colors to the end
    for (int i = 0; i < NUMCOLORS; i++) {
        PALETTE[256 - NUMCOLORS + i] = colors[i];
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
}

void initEnemies() {
    for (int i = 0; i < numEnemies; i++) {
        enemies[i].x = (SCREENWIDTH / ((rand() % 11) + 1));
        enemies[i].y = (SCREENHEIGHT / ((rand() % 11) + 1));
        enemies[i].xvel = (i * (rand() % 5) + 1);
        enemies[i].xvel = (i * (rand() % 5) + 1);
        enemies[i].height = 28;
        enemies[i].width = 24;
        if (i % 3 == 0) {
            enemies[i].active = 1;
        }
    }
}

void initCoin() {
    for (int i = 0; i < numCoins; i++) {
        coins[i].x = (SCREENWIDTH / ((rand() % 20) + 1));
        coins[i].y = (SCREENHEIGHT / ((rand() % 15) + 1));
        coins[i].xvel = 0;
        coins[i].yvel = 0;
        coins[i].height = 24;
        coins[i].width = 24;
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
    if (BUTTON_HELD(BUTTON_LEFT) && (player.x - 1 > 0)) {
        player.xvel = -2;
        if (BUTTON_PRESSED(BUTTON_LSHOULDER)) {
            player.xvel = -6;
        }
    } else if (BUTTON_HELD(BUTTON_RIGHT) && player.x + player.width < SCREENWIDTH) {
        player.xvel = 2;
        if (BUTTON_PRESSED(BUTTON_RSHOULDER)) {
            player.xvel = 6;
        }
    } else {
        player.xvel = 0;
    }

    if (BUTTON_HELD(BUTTON_UP) && (player.y - 1 > 0)) {
        player.yvel = -2;
        if (BUTTON_PRESSED(BUTTON_LSHOULDER)) {
            player.yvel = -6;
        }
    } else if (BUTTON_HELD(BUTTON_DOWN) && (player.y + player.height < SCREENHEIGHT)) {
        player.yvel = 2;
        if (BUTTON_PRESSED(BUTTON_RSHOULDER)) {
            player.yvel = 6;
        }
    } else {
        player.yvel = 0;
    }

    player.oldx = player.x;
    player.oldy = player.y;
    player.x += player.xvel;
    player.y += player.yvel;
}

void updateEnemy(ENEMY* e) {

    if (e->x <= 1) { // left side bounce
        e->xvel = 2;
    }
    if (e->y <= 1) { // top bounce
        e->yvel = 2;
    }
    if ((e->x + e->width) >= 239) {
        e->xvel = -2;
    }
    if ((e->y + e->height) >= 159) {
        e->yvel = -2;
    }

    if (collision(e->x, e->y, e->width, e->height, player.x, player.y, player.width, player.height)) {
        lives--;
        e->active = 0;
    }

    e->oldx = e->x;
    e->oldy = e->y;
    e->x += e->xvel;
    e->y += e->yvel;
}

void updateCoins(ENEMY* c) {
    
    // spawn coins
    if (t % 450 == 0) {
        c->active = 1;
    }

    // if player collects coin
    if (collision(player.x, player.y, player.width, player.height, c->x, c->y, c->width, c->height)) {
        c->active = 0;
        score++;
        REG_SND2CNT = DMG_ENV_VOL(5) |
                            DMG_STEP_TIME(3);
        REG_SND2FREQ = NOTE_G5 | SND_RESET;
    }
}

// draws game

void drawGame() {


    drawFullscreenImage4(backgroundBitmap);
    drawPlayer();

    for (int i = 0; i < numEnemies; i++) {
        drawEnemy(&enemies[i]);
    }
    for (int i = 0; i < numCoins; i++) {
        drawCoins(&coins[i]);
    }    

    flipPage();
    waitForVBlank();
}

void drawPlayer() {
    drawImage4(player.x, player.y, player.width, player.height, spaceshipBitmap);
}

void drawEnemy(ENEMY* e) {
    if (e->active) {
        drawImage4(e->x, e->y, e->width, e->height, asteroidBitmap);
    } else {
        drawRect4(e->x, e->y, e->width, e->height, BLACKID);
    }
}

void drawCoins(ENEMY* c) {
    if (c->active) {
        drawImage4(c->x, c->y, c->width, c->height, USETHISCOINBitmap);
    } else {
        drawRect4(c->x, c->y, c->width, c->height, BLACKID);
    }
}