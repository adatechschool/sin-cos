import processing.sound.*; // IMPORTANT : importer la bibliotèque « sound » publiée par « The processing Foundation »

int frequence = 1;
int intensite = 0;
int nombrePeriode = 25; // à afficher sur la fenêtre

int decalageVertical;

SinOsc bip; // SinOsc = Sine Oscillator

void setup() {
  size(600, 200);
  background(0);
  stroke(127, 255, 127);
  noFill();

  decalageVertical = height / 2;
  bip = new SinOsc(this);
}

void draw() {
  // gestion des événements
  if (mousePressed)  {
    frequence = constrain(mouseX, 1, width);
    intensite = height - constrain(mouseY, 0, height) - decalageVertical;

    bip.play(map(frequence, 0, width, 20, 20000), norm(intensite, 0, height));
  }
  if (keyPressed)
    if (key == '+')
      nombrePeriode++;
    else if (key == '-')
      nombrePeriode--;

  // représentation graphique de l’onde
  clear();
  beginShape();
  for (int i = 0 ; i < width ; i++)
    vertex(i, sin(radians(i * nombrePeriode * 360/width + frequence * millis())) * intensite + decalageVertical);
  endShape();
  println(frequence * millis());
  // Je lui donne un temps et une fréquence, il me renvoie un angle.
}

// mouseWheel() est appelée nativement par draw()
void mouseWheel(MouseEvent event) {
  nombrePeriode += event.getCount();
}
