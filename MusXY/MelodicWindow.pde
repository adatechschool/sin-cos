class MelodicWindow extends Window {
 MelodicWindow (String name) {
   super(name);
   bip = new SinOsc(this);
 }
 void draw() {
  // gestion des événements
  if (mousePressed)  {
    frequence = constrain(mouseX, 1, width);
    intensite = height - constrain(mouseY, 0, height) - decalageVertical;

    bip.play(map(frequence, 0, width, 20, 20000), norm(intensite, 0, height));
  }
  if (keyPressed) {
    if (key == '+')
      nombrePeriode++;
    if (key == '-')
      nombrePeriode--;
  }

  // représentation graphique de l’onde
  clear();
  beginShape();
  for (int i = 0 ; i < width ; i++) {
    vertex(i, sin(radians(i * nombrePeriode * 360/width + frequence * millis())) * intensite + decalageVertical);
  }
  endShape();
}
}
