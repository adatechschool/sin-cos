class Window extends PApplet {

  int frequence = 1, intensite = 0, nombrePeriode = 2;
  int decalageVertical;

  SqrOsc bip;

  Window (String name) {
    super();
    PApplet.runSketch(new String[] {this.getClass().getName()}, this);
    surface.setTitle(name);
    bip = new SqrOsc(this);
  }

  void settings() {
    size(600, 200);
  }

  void setup(){
    background(0);
    stroke(127, 255, 127);
    noFill();
    decalageVertical = height / 2;
  }

  void draw() {
    if (mousePressed)  {
      frequence = constrain(mouseX, 1, width);
      intensite = height - constrain(mouseY, 0, height) - decalageVertical;

      bip.play(map(frequence, 0, width, 0.9, 200), norm(intensite, 0, height));

    }

    clear();
    beginShape();
    for (int i = 0 ; i < width ; i++) {
      vertex(i, sin(radians(i * nombrePeriode * 360/width /* + millis() */ )) * intensite + decalageVertical);
    }
    endShape();
  }
}
