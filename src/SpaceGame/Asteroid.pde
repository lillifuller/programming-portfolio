class Asteroid {
  // member variables
  int x, y, health, healthStart, speed, rad;
  // constructor
  Asteroid(int x, int y) {
    x = int(random(width));
    y = 0;
    health = 30;
    healthStart = 30;
    this.x = x;
    this.y = y;
    speed = int(random(4));
    rad = 25;
  }
  // member methods
  void display() {
    noStroke();
    fill(100);
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
  //this method will detect laser v. asteroid
  boolean laserIntersect(Laser laser) {
    float distance = dist(x, y, laser.x, laser.y);
    if (distance < rad + laser.rad) {
      return true;
    } else {
      return false;
    }
  }
}
