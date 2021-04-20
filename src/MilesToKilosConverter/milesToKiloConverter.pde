void setup() {
  size(600, 200);
}

void draw() {
  background(139, 197, 214);
  textAlign(CENTER);
  fill(0);
  textSize(20);
  text("Miles to Kilometers Converter", width/2, 30);
  textSize(15);
  text("Lilli Fuller | October 2020", width/2, 50);
  strokeWeight(2);
  rect(0, 120, 600, 100);
  strokeWeight(0);
  for (int i = 0; i < 600; i+=40) {
    fill(240, 107, 46);
    rect(i, 110, 2, 13);
    fill(0);
    textSize(12);
    text(i, i, 105);
  }
  convertToKilo(mouseX);
  fill(225, 225, 0);
  strokeWeight(0);
  rect(0, 152, mouseX, 2);
  rect(0, 156, mouseX, 2);
  fill(255);
  rect(0, 125, 600, 2);
  rect(0, 190, 600, 2);
  fill(255, 244, 89);
  ellipse(40, 30, 25, 25);
}

void convertToKilo(float val) {
  val = val*1.609;
  fill(0);
  textSize(14);
  textAlign(LEFT);
  text("Kilometers: " + val, 250, 85);
  text("Miles: " + mouseX, 175, 85);
}
