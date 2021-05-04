class Player {
  int x, y, lives, radius;

  Player() {
    x = 0;
    y = 0;
    lives = 3;
    radius = 20;
  }

  void display(int x, int y) {
    this.x = x;
    this.y = x;
    stroke(0);
    rectMode(CENTER);
    fill(0, 200, 0);
    circle(x, y, 20);
  }

  void move() {
    //use wasd to move
  }

  //boolean carIntersect() {}

  //boolean powerIntersect() {}
}
