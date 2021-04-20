class Button {
  // Member Variables
  int x, y, w, h;
  color c1, c2, c3, c4, c5, c6;
  String val;
  boolean hover;
  boolean isNumber, isOp;

  // Constructor
  Button(int tempX, int tempY, int tempW, int tempH, String tempVal, boolean isNumber, boolean isOp) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    c1 = #f5f5f5;
    c2 = #d9d9d9;
    c3 = #abc4eb;
    c4 = #8da9d6;
    c5 = #616161;
    c6 = #404040;
    val = tempVal;
    hover = false;
    this.isNumber = isNumber;
    this.isOp = isOp;
  }

  // Display Method
  void display() {
    if (isNumber == true && isOp == false) {
      if (hover) {
        fill(c2);
      } else {
        fill(c1);
      }
    } 
    if (isNumber == false && isOp == false) {
      if (hover) {
        fill(c4);
      } else {
        fill(c3);
      }
    }
    if (isNumber ==false && isOp == true) {
      if (hover) {
        fill(c6);
      } else {
        fill(c5);
      }
    }


    rect(x, y, w, h);
    fill(0);
    textSize(15);
    textAlign(CENTER);
    text(val, x+w/2, y+26);
  }

  // Hover Method
  void hover() {
    hover = (mouseX<x+w && mouseX>x && mouseY<y+h && mouseY>y);
  }
}
