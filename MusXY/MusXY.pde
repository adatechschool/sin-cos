import processing.sound.*; // IMPORTANT : importer la bibliotèque « sound » publiée par « The processing Foundation »
MelodicWindow coyote, bipbip;
RythmicWindow boum;

void settings() {
  size(600, 200);
}

void setup() {
  background(0);
  stroke(127, 255, 127);
  noFill();
  coyote = new MelodicWindow();
  bipbip = new MelodicWindow();
  boum = new RythmicWindow();
}

void draw() {

}
