Player player;
Car [] car = new Car [10];
Log [] log = new Log [5];
ArrayList<PowerUp> powers;
int score;
boolean play;

void setup() {
  size(800, 600);
  player = new Player();
  //bottom part
  car[0] = new Car(color(random(255), random(255), random(255)), int(random(width)), 565, 4);
  car[1] = new Car(color(random(255), random(255), random(255)), int(random(width)), 540, -4);
  car[2] = new Car(color(random(255), random(255), random(255)), int(random(width)), 515, 4);
  car[3] = new Car(color(random(255), random(255), random(255)), int(random(width)), 490, -4);
  car[4] = new Car(color(random(255), random(255), random(255)), int(random(width)), 465, 4);
  //top part
  car[5] = new Car(color(random(255), random(255), random(255)), int(random(width)), 64, 4);
  car[6] = new Car(color(random(255), random(255), random(255)), int(random(width)), 89, -4);
  car[7] = new Car(color(random(255), random(255), random(255)), int(random(width)), 114, 4);
  car[8] = new Car(color(random(255), random(255), random(255)), int(random(width)), 139, -4);
  car[9] = new Car(color(random(255), random(255), random(255)), int(random(width)), 164, 4);
  //for (int i = 0; i < car.length; i++) {
  //  car[i] = new Car(color(random(255), random(255), random(255)), 565, 3);
  //}
  log[0] = new Log(int(random(width)), 300);
  log[1] = new Log(int(random(width)), 325);
  log[2] = new Log(int(random(width)), 300);
  log[3] = new Log(int(random(width)), 300);
  log[4] = new Log(int(random(width)), 300);
  powers = new ArrayList();
}

void draw() {
  noCursor();
  //if (!play) {
  //  //startScreen();
  //} else {
    background(100);
    rectMode(CORNER);
    stroke(0);
    //sidewalk
    fill(148, 148, 148);
    rect(0, 600, width, -25);
    rect(0, 425, width, -25);
    rect(0, 200, width, -25);
    rect(0, 25, width, -25);
    //road
    fill(82, 82, 82);
    rect(0, 575, width, -150);
    rect(0, 175, width, -150);
    //grass
    fill(51, 153, 17);
    rect(0, 400, width, -25);
    rect(0, 225, width, -25);
    //river
    fill(43, 183, 204);
    rect(0, 375, width, -150);
    // road lines
    fill(255);
    for (int i = 25; i < width-25; i+=100) {
      //top part
      rect(i, 47, 25, 5);
      rect(i, 72, 25, 5);
      rect(i, 97, 25, 5);
      rect(i, 122, 25, 5);
      rect(i, 147, 25, 5);
      //bottom part
      rect(i, 548, 25, 5);
      rect(i, 523, 25, 5);
      rect(i, 498, 25, 5);
      rect(i, 473, 25, 5);
      rect(i, 448, 25, 5); 
    }
    //sidewalk cracks
    for (int j = 10; j < width-10; j+=40) {
      line(j, 600, j, 575);
      line(j, 425, j, 400);
      line(j, 200, j, 175);
      line(j, 25, j, 0);
    }
    for (int i = 0; i < car.length; i++) {
      car[i].display();
      car[i].move();
    }
    
    player.display();
    player.move();
    if (player.lives<1) {
      play = false;
      gameOver();
    }
  }
//}
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
