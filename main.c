#include "game.h"
#include "gba.h"
#include "mode4.h"
#include "print.h"
#include "sound.h"
#include "SPACESHIPUSETHISONE!!!!!!.h"
#include "ASTEROIDUSETHISONE.h"
#include "BACKGROUDN!!!!!!!!!!.h"
#include "COINPLEASE.h"
#include <stdlib.h>
#include <stdio.h>


unsigned short oldButtons;
unsigned short buttons;

extern int t = 0;
int skipFrames = 2;

int score;
int highscore;
extern int lives = 5;


// states
enum
{
    START,
    GAME,
    PAUSE,
    WIN,
    LOSE,
    SCOREBOARD
};
int state;

// random prototype
void srand();

// random seed
int rSeed;

// text buffers
char temp2[1];

char buffer[41];
char hscore[41];
char temp;

// prototypes
void initialize();


// state prototypes
void goToStart();
void start();
void goToGame();
void game();
void goToPause();
void pause();
void goToLose();
void lose();
void goToScoreboard();
void scoreboard();


int main() {
    REG_DISPCTL = MODE(4) | BG_ENABLE(2) | DISP_BACKBUFFER;

    initialize();

    while (1) {
        oldButtons = buttons;
        buttons = REG_BUTTONS;

        // state machine
        switch (state) {
            case START:
                start();
                break;
            case GAME:
                game();
                break;
            case PAUSE:
                pause();
                break;
            case LOSE:
                lose();
                break;
            case SCOREBOARD:
                scoreboard();
                break;
        }
        t++; // increment time
    }
}

// set up gba
void initialize() {

    REG_DISPCTL = MODE(3) | BG_ENABLE(2);    

    REG_SOUNDCNT_X = SND_ENABLED;

    REG_SOUNDCNT_L = DMG_VOL_LEFT(5) |
                   DMG_VOL_RIGHT(5) |
                   DMG_SND1_LEFT |
                   DMG_SND1_RIGHT |
                   DMG_SND2_LEFT |
                   DMG_SND2_RIGHT |
                   DMG_SND3_LEFT |
                   DMG_SND3_RIGHT |
                   DMG_SND4_LEFT |
                   DMG_SND4_RIGHT;
    REG_SOUNDCNT_H = DMG_MASTER_VOL(2);
    
    buttons = REG_BUTTONS;
    oldButtons = 0;

    goToStart();
}

void goToStart() {

    DMANow(3, COINPLEASEPal, PALETTE, 256);
    drawFullscreenImage4(BACKGROUDN__________Bitmap);
    drawString4(90, 38, "space guys", PALETTE[3]);


    waitForVBlank();
    flipPage();

    state = START;

    rSeed = 0;
}

// runs start
void start() {

    rSeed++;
    waitForVBlank();
    flipPage();

    if (BUTTON_PRESSED(BUTTON_START)) {
        srand(rSeed);
        goToGame();
        initGame();
    }
}

// set up game
void goToGame() {

    state = GAME;
}

// runs game state
void game() {
    
    updateGame();
    drawGame();

    drawString4(2, 2, "lives: ", PALETTE[3]);
    drawString4(2, 10, "score: ", PALETTE[3]);
    sprintf(buffer, "%d", lives);
    sprintf(hscore, "%d", score);
    drawString4(42, 2, buffer, PALETTE[3]);
    drawString4(42, 10, hscore, PALETTE[3]);

    waitForVBlank();
    flipPage();


    if (BUTTON_PRESSED(BUTTON_START)) {
        goToPause();
    }

    // if (lives == 0) {
    //     goToLose();
    // }
}

// sets up pause state
void goToPause() {

    fillScreen4(GRAY);
    drawString4(90, 38, "game paused!", PALETTE[3]);
    drawString4(60, 58, "press start to continue", PALETTE[19]);
    drawString4(70, 68, "press select to quit", PALETTE[18]);

    waitForVBlank();
    flipPage();

    state = PAUSE;
}

// runs pause state
void pause() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToGame();
    }
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToStart();
    }
    if (BUTTON_PRESSED(BUTTON_A)) {
        goToScoreboard();
    }
}

// set up lose
void goToLose() {
    fillScreen4(GRAY);
    drawImage4(83, 90, 28, 24, SPACESHIPUSETHISONE______Bitmap);
    drawString4(85, 48, "you lost!", PALETTE[3]);
    drawString4(85, 68, "score: ", PALETTE[19]);
    drawString4(125, 68, hscore, PALETTE[19]);

    drawString4(45, 88, "press start to try again", PALETTE[18]);

    waitForVBlank();
    flipPage();

    state = LOSE;
}

// runs lose state
void lose() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }
    waitForVBlank();
}

// // set up win
// void goToWin() {
//     waitForVBlank();
//     fillScreen4(FOREST);

//     drawString4(85, 48, "you win!", YELLOW);

//     drawString4(85, 68, "score: ", RED);
//     drawString4(125, 68, hscore, RED);

//     drawString4(43, 108, "press start to play again", BLUE);
//     state = WIN;
// }

// // runs win state
// void win() {
//     if (BUTTON_PRESSED(BUTTON_START)) {
//         goToStart();
//     }

//     if (BUTTON_PRESSED(BUTTON_A)) {
//         goToScoreboard();
//     }
// }

// go to da scoreboard
void goToScoreboard() {
    fillScreen4(GRAY);
    drawImage4(83, 90, 28, 24, SPACESHIPUSETHISONE______Bitmap);
    drawString4(85, 48, "this is where", PALETTE[3]);
    drawString4(85, 68, "i will put score ", PALETTE[19]);
    drawString4(125, 68, hscore, PALETTE[19]);

    drawString4(45, 88, "press start to try again", PALETTE[19]);

    waitForVBlank();
    flipPage();

    state = SCOREBOARD;
}

// runs scoreboard state
void scoreboard() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }

    if (BUTTON_PRESSED(BUTTON_A)) {
        goToPause();
    }
}
