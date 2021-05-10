class Player {
  int x, y, lives, radius;

  Player() {
    x = 400;
    y = 588;
    lives = 3;
    radius = 20;
  }

  void display() {
    stroke(0);
    rectMode(CENTER);
    fill(0, 200, 0);
    ellipse(x, y, radius, radius);
  }

  void move() {
    if (keyPressed) {
      if (key == 'w' || key == 'W' ) {
        y-=2;
      } else if (key == 'a' || key == 'A' ) {
        x-=2;
      } else if (key == 's' || key == 'S' ) {
        y+=2;
      } else if (key == 'd' || key == 'D' ) {
        x+=2;
      }
      //ellipse(x, y, radius, radius);
    }
  }


  //boolean carIntersect() {}

  //boolean powerIntersect() {}
}
