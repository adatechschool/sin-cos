import processing.sound.*; // IMPORTANT : importer la bibliotèque « sound » publiée par « The processing Foundation »
UI mainInterface;
Window coyote = new Window("coucou");

void settings() {
  size(600, 600);
}

void setup() {
  background(0);
  noFill();

  mainInterface = new UI("DejaVu Sans", 16, new color[] { #509050, #408040, #404040, #FFFFFF }); // font, fontSize, colors { default, hover, clickable, text }
  mainInterface.newSimpleButton(10, 10, 60, 40, "+");
}

void draw() {
  mainInterface.update();
}

void mouseClicked() {
  mainInterface.click();
}
