import processing.sound.*; // IMPORTANT : importer la bibliotèque « sound » publiée par « The processing Foundation »

float frequence = 440;
int intensite = 16;
int periodes = 1; // Nombre de périodes à afficher sur la fenêtre

int decalage_y;

SinOsc bip; // SinOsc = Sine Oscillator

void setup() {
  size(600, 200);
  decalage_y = height / 2;
  background(0);

  noFill();

  bip = new SinOsc(this);
  bip.play(440, 1);

  println("ATTENTION : La barre qui défile ne correspond à rien pour l’instant.");
}

void draw() {
  // gestion des événements
  if (mousePressed)  {
    intensite = height - mouseY - decalage_y;

    frequence = mouseX ;
    bip.play(map(frequence, 0, width, 20, 2000),(norm(intensite,0,height)));
}
  // mouseWheel() définie plus bas est appelée nativement par draw()

  clear();

  // représentation de l’onde et de l’intensité
  stroke(127, 255, 127);
  strokeWeight(1);
  beginShape();
  for (int i = 0 ; i < width ; i++) {
    vertex(i, sin(radians(i * periodes * 360/width)) * intensite + decalage_y);
  }
  endShape();

  // représentation de la fréquence // À IMPLÉMENTER
  stroke(255, 0, 0);
  strokeWeight(5);
  float x = millis() % width;
  point(x, sin(radians(x * periodes * 360/width)) * intensite + decalage_y);

}

void mouseWheel(MouseEvent event) {
  periodes += event.getCount();
}
