class Car {
  int x, y, radius, speed;
  color c;

  Car(color c, int x, int y, int speed) {
    this.c = c;
    this.speed = speed;
    this.x = x;
    this.y = y;
  }

  void display() {
    rectMode(CENTER);
    fill(0);
    rect(x+7, y+5, 5, 3, 5);
    rect(x-7, y+5, 5, 3, 5);
    rect(x+7, y-5, 5, 3, 5);
    rect(x-7, y-5, 5, 3, 5);
    fill(c);
    rect(x, y, 20, 10, 3);
    fill(#C5DAEA);
    rect(x+5, y, 6, 8, 2);
    rect(x-5, y, 6, 8, 2);
  }

  void move() {
    x += speed;
    if (x > width) {
      x = 0;
    } 
    if (x < width-width) {
      x = width;
    }
  }

  boolean reachedSide() {
    if (x > width+25) {
      return true;
    } else {
      return false;
    }
  }
}
