import processing.sound.*; // IMPORTANT : importer la bibliotèque « sound » publiée par « The processing Foundation »

float frequence = 0;
int intensite = 0;
int nombrePeriode = 1; // à afficher sur la fenêtre

int decalageVertical;

SinOsc bip; // SinOsc = Sine Oscillator

void setup() {
  background(0);
  size(600, 200);

  decalageVertical = height / 2;

  noFill();
  stroke(127, 255, 127);

  bip = new SinOsc(this);
}

void draw() {
  // gestion des événements
  if (mousePressed)  {
    intensite = height - mouseY - decalageVertical;
    frequence = mouseX;

    bip.play(map(frequence, 0, width, 20, 20000), norm(intensite, - decalageVertical, decalageVertical));
  }
  if (keyPressed) {
    if (key == '+')
      nombrePeriode++;
    else if (key == '-')
      nombrePeriode--;
  }


  // représentation graphique de l’onde
  clear();
  beginShape();
  for (int i = 0 ; i < width ; i++) {
    vertex(i, sin(radians(i * nombrePeriode * 360/width + millis())) * intensite + decalageVertical);
  }
  endShape();
}


// mouseWheel() est appelée nativement par draw()
void mouseWheel(MouseEvent event) {
  nombrePeriode += event.getCount();
}
