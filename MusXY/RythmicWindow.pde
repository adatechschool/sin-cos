class RythmicWindow extends Window {
  Pulse ting;
  RythmicWindow () {
    super();
    ting = new Pulse(this);
  }
  void draw() {
    if (mousePressed)  {
      frequence = constrain(mouseX, 1, width);
      intensite = height - constrain(mouseY, 0, height) - decalageVertical;

      ting.play();

    }

    clear();
    beginShape();
    for (int i = 0 ; i < width ; i++) {
      vertex(i, sin(radians(i * nombrePeriode * 360/width + frequence * millis())) * intensite + decalageVertical);
    }
    endShape();
  }
}
