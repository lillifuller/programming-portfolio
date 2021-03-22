class Star {
  // member variables
  int x, y;
  int speed;
  color c;
  // constructor
  Star(int x, int y, color c) {
    x = int(random(width));
    y = 0;
    speed = int(random(2, 4));
    this.x = x;
    this.y = y;
    this.c = c;
  }

  void move() {
    y += speed;
  }

  boolean reachedBottom() {
    if (y > height+25) {
      return true;
    } else {
      return false;
    }
  }
  // member methods
  void display() {
    noStroke();
    fill(240);
    quad(x, y, x-2, y-2, x, y-4, x+2, y-2);
  }
}
