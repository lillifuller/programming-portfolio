Button [] numButtons = new Button [10];
Button [] opButtons = new Button [12];
String displayVal = "0";
String op = ""; //operator to use in a calculation
float r = 0.0; //what is right of the operator
float l = 0.0; //what is left of the operator
float result = 0.0; //answer
boolean left = true;

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
  opButtons[2] = new Button(220, 420, 50, 40, ".", true, false);
  opButtons[3] = new Button(290, 420, 50, 40, "-/+", true, false);
  opButtons[4] = new Button(80, 420, 50, 40, "+", false, false);
  opButtons[5] = new Button(80, 360, 50, 40, "-", false, false);
  opButtons[6] = new Button(80, 300, 50, 40, "x", false, false);
  opButtons[7] = new Button(80, 240, 50, 40, "/", false, false);
  opButtons[8] = new Button(80, 180, 50, 40, "%", false, true);
  opButtons[9] = new Button(150, 180, 50, 40, "x²", false, true);
  opButtons[10] = new Button(220, 180, 50, 40, "√", false, true);
  opButtons[11] = new Button(290, 180, 50, 40, "π", false, true);
}

void draw() {
  background(155);
  fill(#613111);
  rect(50, 50, 320, 500);
  fill(#804217);
  rect(60, 60, 300, 480);
  fill(0);
  rect(80, 90, 260, 60);
  //show calculator display
  updateDisplay();
  //Display and hover buttons
  for (int i = 0; i < numButtons.length; i++) {
    numButtons[i].display();
    numButtons[i].hover();
  }
  for (int i = 0; i < opButtons.length; i++) {
    opButtons[i].display();
    opButtons[i].hover();
  }
}

void mouseReleased() {
  println("L: " + l + " R: " + r + " Op: " + op);
  println("Result: " + result + " Left: " + left);

  // Interaction with numbers
  for (int i = 0; i <numButtons.length; i++) {
    if (numButtons[i].hover && displayVal.length()<20) {
      if (left) { //Left number
        if (displayVal.equals("0")) {
          displayVal = (numButtons[i].val);
          l = float(displayVal);
        } else {
          displayVal += (numButtons[i].val);
          l = float(displayVal);
        }
      } else {
        if (displayVal.equals("0")) {
          displayVal = (numButtons[i].val);
          r = float(displayVal);
        } else {
          displayVal += (numButtons[i].val);
          r = float(displayVal);
        }
      }
    }
  }
  // Interaction with operators
  for (int i = 0; i < opButtons.length; i++) {
    if (opButtons[i].hover && opButtons[i].val.equals("C")) {
      //Clear variables
      displayVal = "0";
      result = 0.0;
      left = true;
      r = 0.0;
      l = 0.0;
      op = "C";
    } else if (opButtons[i].hover && opButtons[i].val.equals("+")) {
      //Determine if the calculator is operating on left or right
      if (!left) {
        performCalculation();
      } else {
        op = "+";
        left = false;
        displayVal = "0";
      }
    } else if (opButtons[i].hover && opButtons[i].val.equals("ENTER")) {
      performCalculation();
    } else if (opButtons[i].hover && opButtons[i].val.equals("-")) {
      //Determine if the calculator is operating on left or right
      if (!left) {
        performCalculation();
      } else {
        op = "-";
        left = false;
        displayVal = "0";
      }
    } else if (opButtons[i].hover && opButtons[i].val.equals("x")) {
      //Determine if the calculator is operating on left or right
      if (!left) {
        performCalculation();
      } else {
        op = "x";
        left = false;
        displayVal = "0";
      }
    } else if (opButtons[i].hover && opButtons[i].val.equals("/")) {
      //Determine if the calculator is operating on left or right
      if (!left) {
        performCalculation();
      } else {
        op = "/";
        left = false;
        displayVal = "0";
      }
    }
  }
}

void updateDisplay() {
  rectMode(CORNER);
  fill(0);
  rect(80, 90, 225, 60);

  fill(191, 19, 19);
  textAlign(RIGHT);

  if (displayVal.length()<13) {
    textSize(32);
  } else if (displayVal.length()<14) {
    textSize(28);
  } else if (displayVal.length()<15) {
    textSize(26);
  } else if (displayVal.length()<17) {
    textSize(24);
  } else if (displayVal.length()<19) {
    textSize(22);
  } else if (displayVal.length()<21) {
    textSize(20);
  } else if (displayVal.length()<23) {
    textSize(18);
  } else if (displayVal.length()<25) {
    textSize(16);
  } else {
    textSize(14);
  }
  text(displayVal, 330, 135);
}

void performCalculation() {
  if (op.equals("+")) {
    result = l + r;
  } else if (op.equals("-")) {
    result = l - r;
  } else if (op.equals("x")) {
    result = l * r;
  } else if (op.equals("/")) {
    result = l / r;
  }
  l = result;
  displayVal = str(result);
  left = true;
}
