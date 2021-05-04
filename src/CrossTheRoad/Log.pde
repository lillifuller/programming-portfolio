class Log {
  int x, y, radius, speed;

  Log(int x, int y) {
    x = 0;
    y = int(random(200, 300));
    this.x = x;
    this.y = y;
    speed = 2;
    radius = 30;
  }

  void display() {
    noStroke();
    fill(130, 77, 12);
    rect(x, y, 30, 15);
  }

  void move() {
    x+=speed;
  }

  boolean reachedSide() {
    if (x > width+25) {
      return true;
    } else {
      return false;
    }
  }
}
