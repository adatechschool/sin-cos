import processing.sound.*; // IMPORTANT : importer la bibliotèque « sound » publiée par « The processing Foundation »
MelodicWindow coyote, bipbip;


SinOsc bip; // SinOsc = Sine Oscillator
void settings() {
  size(600, 200);
}
void setup() {
  background(0);
  stroke(127, 255, 127);
  noFill();
  coyote = new MelodicWindow("coyote");
  bipbip = new MelodicWindow("bipbip");
}

void draw() {

}
