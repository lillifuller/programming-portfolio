Button [] numButtons = new Button [10];
Button [] opButtons = new Button [6];
String displayVal = "0.0";

void setup() {
  size(420, 600);
  numButtons[0] = new Button(150, 420, 50, 40, "0", true, false);
  numButtons[1] = new Button(150, 360, 50, 40, "1", true, false);
  numButtons[2] = new Button(220, 360, 50, 40, "2", true, false);
  numButtons[3] = new Button(290, 360, 50, 40, "3", true, false);
  numButtons[4] = new Button(150, 300, 50, 40, "4", true, false);
  numButtons[5] = new Button(220, 300, 50, 40, "5", true, false);
  numButtons[6] = new Button(290, 300, 50, 40, "6", true, false);
  numButtons[7] = new Button(150, 240, 50, 40, "7", true, false);
  numButtons[8] = new Button(220, 240, 50, 40, "8", true, false);
  numButtons[9] = new Button(290, 240, 50, 40, "9", true, false);

  opButtons[0] = new Button(80, 480, 80, 40, "C", false, false);
  opButtons[1] = new Button(190, 480, 150, 40, "ENTER", false, false);
  opButtons[2] = new Button(80, 420, 50, 40, "+", false, false);
  opButtons[3] = new Button(80, 360, 50, 40, "-", false, false);
  opButtons[4] = new Button(80, 300, 50, 40, "x", false, false);
  opButtons[5] = new Button(80, 240, 50, 40, "/", false, false);
  
}

void draw() {
  background(155);
  fill(#613111);
  rect(50, 50, 320, 500);
  fill(#804217);
  rect(60, 60, 300, 480);
  fill(0);
  rect(80, 90, 260, 60);
  for (int i = 0; i < numButtons.length; i++) {
    numButtons[i].display();
    numButtons[i].hover();
  }
  for (int i = 0; i < opButtons.length; i++) {
    opButtons[i].display();
    opButtons[i].hover();
  }
  updateDisplay();
}

void mousePressed() {
  for (int i = 0; i <numButtons.length; i++) {
    if (numButtons[i].hover == true) {
      displayVal += numButtons[i].val;
    }
  }
}

void updateDisplay() {
  fill(0);
  rect(80, 90, 260, 60);
  textSize(25);
  textAlign(RIGHT);
  fill(191, 19, 19);
  text(displayVal, 330, 130);
}

void performCalculation() {
}
