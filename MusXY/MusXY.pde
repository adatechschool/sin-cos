import processing.sound.*; // IMPORTANT : importer la bibliotèque « sound » publiée par « The processing Foundation »
MelodicWindow coyote;


SinOsc bip; // SinOsc = Sine Oscillator

void setup() {
  size(600, 200);
  background(0);
  stroke(127, 255, 127);
  noFill();  
  coyote = new MelodicWindow(this);
}

void draw() {
 coyote.express_yourself(); 
}
