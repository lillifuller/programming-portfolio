Car [] car = new Car [5];

void setup() {
  size(200, 200);
  car[0] = new Car(#C2C4CE); //previa
  car[1] = new Car(#E82525); //trooper
  car[2] = new Car(#AA0000); //old subaru
  car[3] = new Car(#65674D); //crusier
  car[4] = new Car(#25673A); //new subaru
}

void draw() {
  background(100);
  for(int i = 0; i < car.length; i++) {
    car[i].display();
    car[i].drive();
  }
}
