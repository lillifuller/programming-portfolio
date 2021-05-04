Player player;
ArrayList<Car> cars;
ArrayList<Log> logs;
ArrayList<PowerUp> powers;
int score;
boolean play;

void setup() {
  size(800, 600);
  player = new Player();
}

void draw() {
  noCursor();
  if (!play) {
    startScreen();
  } else {
    background(100);
    rectMode(CORNER);
    stroke(255);
    //sidewalk
    fill(148, 148, 148);
    rect(0, 600, width, -30);
    rect(0, 420, width, -30);
    //road
    fill(82, 82, 82);
    rect(0, 570, width, -150);
    //grass
    fill(51, 153, 17);
    rect(0, 390, width, -20);
    rect(0, 120, width, -20);
    //river
    fill(43, 183, 204);
    rect(0, 370, width, -150);


    player.display(mouseX, mouseY);
    if (player.lives<1) {
      play = false;
      gameOver();
    }
  }
}

void startScreen() {
  background(10);
  textAlign(CENTER);
  textSize(17);
  text("Welcome to Cross The Road!", width/2, height/2);
  textSize(13);
  text("Click to start...", width/2, height/2+30);
  if (mousePressed) {
    play = true;
  }
}

void gameOver() {
  background(10);
  textAlign(CENTER);
  textSize(17);
  text("Game Over!", width/2, height/2);
  textSize(13);
  text("Score: " + score, width/2, height/2+30);
}
