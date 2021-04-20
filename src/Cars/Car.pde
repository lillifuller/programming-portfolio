class Car {
  //member variables
  color c;
  float xpos, ypos, xspeed;

  Car(color c) {
    this.c = c;
    xpos = random(width);
    ypos = random(height);
    xspeed = random(-5, 5);
  }

  void display() {
    rectMode(CENTER);
    fill(0);
    rect(xpos+7, ypos+5, 5, 3, 5);
    rect(xpos-7, ypos+5, 5, 3, 5);
    rect(xpos+7, ypos-5, 5, 3, 5);
    rect(xpos-7, ypos-5, 5, 3, 5);
    fill(c);
    rect(xpos, ypos, 20, 10, 3);
    fill(#C5DAEA);
    rect(xpos+5, ypos, 6, 8, 2);
    rect(xpos-6, ypos, 4, 8, 2);
  }

  void drive() {
    xpos += xspeed;
    if (xpos > width) {
      xpos = 0;
    } else if (xspeed < 0 && xpos < width){
      xpos = width;
    }
  }
}
