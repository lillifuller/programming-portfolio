class PowerUp {
  // member variables
  int x, y, speed, rad;
  PowerUp(int x, int y) {
    x = 0;
    y = 0;
    this.x = x;
    this.y = y;
    speed = int(random(4));
    rad = 10;
  }
  // member methods
  void display() {
    strokeWeight(5);
    fill(255, 0, 255);
    ellipse(x, y, rad, rad);
  }
  void move() {
    y+=speed;
  }
  boolean reachedBottom() {
    if (y > height+25) {
      return true;
    } else {
      return false;
    }
  }
}
