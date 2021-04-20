//Global Variables
int x, y;

void setup() {
  size(400, 400);
  frameRate(10);
  x = 10;
  y = 10;
}

void draw() {
  fill(0);
  //drawName();
  //noLoop();
  if(keyPressed) {
    if(key == 'd' || key == 'D') {
      moveRight(10);
    } else if(key == 'a' || key == 'A') {
      moveLeft(10);
    } else if(key == 'w' || key == 'W') {
      moveUp(10);
    } else if(key == 's' || key == 'S') {
      moveDown(10);
    }
  }
}

void mouseClicked() {
  saveFrame("line-######.png");
}

void keyPressed() {
  if(key == CODED) {
    if(keyCode == RIGHT) {
      moveRight(10);
    } else if(keyCode == LEFT) {
      moveLeft(10);
    } else if(keyCode == UP) {
      moveUp(10);
    } else if(keyCode == DOWN) {
      moveDown(10);
    }
  } 
}

//Algorithm for initials
//void drawName() {
//  moveRight(30);
//  moveDown(150);
//  moveRight(80);
//  moveUp(80);
//  moveUpRight(40);
//  moveDownRight(40);
//  moveDown(80);
//  moveUp(35);
//  moveLeft(80);
//  moveRight(80);
//  moveDown(35);
//  moveRight(40);
//  moveUp(120);
//  moveRight(75);
//  moveLeft(75);
//  moveDown(40);
//  moveRight(50);
//  moveLeft(50);
//}

//Method to draw right lines
void moveRight(int rep) {
  for (int i = 0; i < rep; i++) {
    point(x+i, y);
  }
  x=x+rep;
}

//Method to draw left lines
void moveLeft(int rep) {
  for (int i = 0; i < rep; i++) {
    point(x-i, y);
  }
  x=x-rep;
}

//Method to draw up lines
void moveUp(int rep) {
  for (int i = 0; i < rep; i++) {
    point(x, y-i);
  }
  y=y-rep;
}

//Method to draw down lines
void moveDown(int rep) {
  for (int i = 0; i < rep; i++) {
    point(x, y+i);
  }
  y=y+rep;
}

//Method to draw up-right lines
void moveUpRight(int rep) {
  for (int i = 0; i < rep; i++) {
    point(x+i, y-i);
  }
  x=x+rep;
  y=y-rep;
}

//Method to draw up-left lines
void moveUpLeft(int rep) {
  for (int i = 0; i < rep; i++) {
    point(x-i, y-i);
  }
  x=x-rep;
  y=y-rep;
}

//Method to draw down-right lines
void moveDownRight(int rep) {
  for (int i = 0; i < rep; i++) {
    point(x+i, y+i);
  }
  x=x+rep;
  y=y+rep;
}

//Method to draw down-left lines
void moveDownLeft(int rep) {
  for (int i = 0; i < rep; i++) {
    point(x-i, y+i);
  }
  x=x-rep;
  y=y+rep;
}
