class PowerUp {
  int x, y, radius;
  color c;

  PowerUp(int x, int y) {
    x = 0;
    y = 0;
    this.x = x;
    this.y = y;
    radius = 10;
  }

  void display() {
    strokeWeight(5);
    fill(200, 0, 200);
    ellipse(x, y, radius, radius);
  }
}
