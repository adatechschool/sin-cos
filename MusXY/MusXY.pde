import processing.sound.*; // IMPORTANT : importer la bibliotèque « sound » publiée par « The processing Foundation »
UI master_interface;

void settings() {
  size(600, 600);
}

void coucou() {
  println("coucou");
}

void setup() {
  background(0);
  stroke(127, 255, 127);
  noFill();
  color[] uiColors = {
  #509050, // default color
  #408040,// hovered color
  #404040, // clicked color
  #FFFFFF // text color
  };
  master_interface = new UI("DejaVu Sans", 16, uiColors);
  master_interface.newSimpleButton(10, 10, 100, 40, "Coucou");
  master_interface.newSimpleButton(10, 60, 100, 40, "Chouette trop long");
}

void draw() {
  master_interface.update();
}