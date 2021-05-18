class Player {
  int x, y, lives, radius;

  Player() {
    x = 400;
    y = 588;
    lives = 3;
    radius = 10;
  }

  void display() {
    stroke(0);
    rectMode(CENTER);
    line(x+5, y+5, x+10, y+10);
    line(x+5, y-5, x+10, y-10);
    line(x-5, y+5, x-10, y+10);
    line(x-5, y-5, x-10, y-10);
    fill(0, 200, 0);
    ellipse(x, y, 10, 15);
    ellipse(x, y-10, 10, 10);
    fill(0);
    ellipse(x+3, y-10, 2, 2);
    ellipse(x-3, y-10, 2, 2);
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
    }
  }


  boolean carIntersect(Car car) {
    float distance = dist(x, y, car.x, car.y);
    if (distance < radius + car.radius) {
      return true;
    } else {
      return false;
    }
  }

  boolean logIntersect(Log log) {
    float distance = dist(x, y, log.x, log.y);
    if (distance < radius + log.radius) {
      return true;
    } else {
      return false;
    }
  }

  boolean riverIntersect(Log log) {
    float distance = dist (x, y, log.x, log.y);
    if (distance > radius + log.radius + 20 && player.y<375 && player.y>230 && !logIntersect(log)) {
      return true;
    } else {
      return false;
    }
  }

  //boolean powerIntersect() {}
}
