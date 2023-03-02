#include "gba.h"
#include "mode4.h"
#include "print.h"

unsigned short oldButtons;
unsigned short buttons;

extern int t = 0;
int skipFrames = 2;

int score;
int highscore;

// states
enum
{
    START,
    GAME,
    PAUSE,
    WIN,
    LOSE
};
int state;

// random
void srand();
int rSeed;

// text buffer
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
void goToWin();
void win();


int main() {
    REG_DISPCTL = MODE(4) | BG_ENABLE(2) | DISP_BACKBUFFER;

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
            case WIN:
                win();
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

    // write start lol

    state = START;
    rSeed = 0;
}

// runs start
void start() {

    rSeed++;

    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        srand(time(NULL));
        goToGame();
        initGame();
    }
}

// set up game
void goToGame() {

    // fillScreen(BROWN);
    // drawRect(52, 0, 138, SCREENHEIGHT, BRULEE);
    // drawString(2, 31, "score: ", FOREST);
    state = GAME;
}

// runs game state
void game() {
    
    updateGame();

    sprintf(buffer, "%d", score);
    sprintf(hscore, "%d", temp);


    drawGame();

    if (BUTTON_PRESSED(BUTTON_START)) {
        goToPause();
    }

    if (score == -1) {
        goToLose();
    }
}

// sets up pause state
void goToPause() {
    fillScreen(FOREST);
    drawString(90, 38, "game paused!", BRULEE);
    drawString(60, 58, "press start to continue", PEENK);
    drawString(70, 68, "press select to quit", LAVPINK);
    waitForVBlank();
    state = PAUSE;
}

// runs pause state
void pause() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToGame();
    }
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToStart();
    }
}

// set up lose
void goToLose() {
    fillScreen(FOREST);
    drawString(85, 48, "you lost!", PEENK);
    drawString(85, 68, "score: ", PEENK);
    drawString(125, 68, hscore, PEENK);

    drawString(45, 88, "press start to try again", BRULEE);
    waitForVBlank();
    state = LOSE;
}

// runs lose state
void lose() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }
}

// set up win
void goToWin() {
    waitForVBlank();
    fillScreen(FOREST);

    drawString(85, 48, "you win!", PEENK);

    drawString(164, 78, hscore, BRULEE);

    drawString(43, 108, "press start to play again", BRULEE);
    state = WIN;
}

// runs win state
void win() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }
}