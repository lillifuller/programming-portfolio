class SpaceShip {
  // member variables
  int x, y, health, lives, rad;
  color c;
  float easing;
  // constructor
  SpaceShip(color c) {
    x = 0;
    y = 0;
    health = 100;
    lives = 3;
    rad = 20;
    this.c = c;
    easing = 0.05;
  }
  // memeber methods
  void display(int x, int y) {
    this.x = x;
    this.y = y;
    rectMode(CORNER);
    //red parts
    stroke(#891515);
    fill(#891515);
    //second layer
    rect(x-6, y-15, 12, 8);
    //thrusters
    rect(x-8, y+10, 5, 8);
    rect(x+2, y+10, 5, 8);
    //blue part
    fill(#01108B);
    stroke(#01108B);
    //fourth layer
    rect(x-10, y, 20, 7);
    //white parts
    fill(#B1B2BC);
    stroke(#B1B2BC);
    //third layer
    quad(x-6, y-8, x-10, y, x+10, y, x+6, y-8);
    //last layer
    rect(x-10, y+7, 20, 7);
    //first layer
    triangle(x-6, y-15, x, y-33, x+6, y-15);
    //things that stick out
    quad(x+10, y+7, x+10, y+14, x+16, y+10, x+16, y+4); 
    quad(x-10, y+7, x-10, y+14, x-16, y+10, x-16, y+4);
    //blasters
    rect(x+14, y-7, 2, 16);
    rect(x-16, y-7, 2, 16);
  }

  //this method will detect rock v. ship
  boolean asteroidIntersect(Asteroid asteroid) {
    float distance = dist(x, y, asteroid.x, asteroid.y);
    if (distance < rad + asteroid.rad) {
      return true;
    } else {
      return false;
    }
  }
  boolean pUpIntersect(PowerUp pUp) {
    float distance = dist(x, y, pUp.x, pUp.y);
    if (distance < rad + pUp.rad) {
      return true;
    } else {
      return false;
    }
  }
}
