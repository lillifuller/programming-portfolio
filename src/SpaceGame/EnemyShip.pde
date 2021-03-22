class EnemyShip {
  // member variables
  int x, y, health;
  color c;

  // constructor
  EnemyShip(color c) {
    x = 0;
    y = 0;
    health = 100;
    this.c = c;
  }

  // memeber methods
  void display(int x, int y) {
    //orange parts
    stroke(#F0CE0F);
    fill(#F0CE0F);
    //second layer
    rect(x-6, y+8, 12, 8);
    //thrusters
    rect(x-8, y-18, 5, 8);
    rect(x+2, y-18, 5, 8);
    //turquiose part
    fill(#7B16D6);
    stroke(#7B16D6);
    //fourth layer
    rect(x-10, y-8, 20, 7);
    //green parts
    fill(c);
    stroke(c);
    //third layer
    quad(x-6, y+8, x-10, y, x+10, y, x+6, y+8);
    //last layer
    rect(x-10, y-14, 20, 7);
    //first layer
    triangle(x-6, y+15, x, y+33, x+6, y+15);
    //things that stick out
    quad(x+10, y-7, x+10, y-14, x+16, y-10, x+16, y-4); 
    quad(x-10, y-7, x-10, y-14, x-16, y-10, x-16, y-4);
    //blasters
    rect(x+14, y-7, 2, 16);
    rect(x-16, y-7, 2, 16);
  }
}
