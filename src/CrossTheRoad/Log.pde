class Log {
  int x, y, radius, speed;

  Log(int x, int y, int speed) {
    this.x = x;
    this.y = y;
    this.speed = speed;
    radius = 20;
  }

  void display() {
    noStroke();
    rectMode(CENTER);
    fill(130, 77, 12);
    rect(x, y, 30, 20);
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
