import processing.sound.*; // IMPORTANT : importer la bibliotèque « sound » publiée par « The processing Foundation »


float frequence = 440;
int intensite = 30;
int periodes = 3; // nombre de périodes à afficher sur la fenêtre

int decalage_y;

SinOsc bip; // SinOsc = Sine Oscillator

void setup() {
  size(600, 200);
  decalage_y = height / 2;
  background(0);


  noFill();
  stroke (127, 255, 127);

  bip = new SinOsc(this);
  bip.play(440, 1);

  println("ATTENTION : La barre qui défile ne correspond à rien pour l’instant.");
}


void draw() {
  // gestion des événements
  if (mousePressed)  {
    intensite = height - mouseY - decalage_y;
    bip.amp(norm(intensite, 0, height));

    frequence = mouseX * 0.02;
    bip.freq(frequence);
  }
  // mouseWheel() définie plus bas est appelée nativement par draw()

  clear();

  // représentation de la fréquence // À IMPLÉMENTER
  float x = width - millis() % width;
  line(x, 0, x, height);

  // représentation de l’onde et de l’intensité
  beginShape();
  for (int i = 0 ; i < width ; i++) {
    vertex(i, sin(radians(i * periodes * 360/width)) * intensite + decalage_y);
  }
  endShape();
}

void mouseWheel(MouseEvent event) {
  periodes += event.getCount();
}
