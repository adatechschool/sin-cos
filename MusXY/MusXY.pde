import processing.sound.*; // IMPORTANT : importer la bibliotèque « sound » publiée par « The processing Foundation »
UI mainInterface;

void settings() {
  size(600, 600);
}

void setup() {
  background(0);
  stroke(127, 255, 127);
  noFill();
  mainInterface = new UI("DejaVu Sans", 16, new color[] { #509050, #408040, #404040, #FFFFFF });
  mainInterface.newSimpleButton(10, 10, 100, 40, "Coucou");
  mainInterface.newSimpleButton(120, 10, 400, 40, "Ceci est une phrase.");
  mainInterface.newSimpleButton(10, 60, 100, 40, "Chouette");
  mainInterface.newSimpleButton(120, 60, 400, 40, "Pointless");
  mainInterface.newSimpleButton(10, 110, 100, 40, "Anticonstitutionnellement");
  mainInterface.newSimpleButton(120, 110, 400, 40, "Anticonstitutionnellement");
}

void draw() {
  mainInterface.update();
}

void mouseClicked() {
  mainInterface.click();
}
