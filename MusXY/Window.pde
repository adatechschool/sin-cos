class Window extends PApplet {

  int frequence = 1;
  int intensite = 0;
  int nombrePeriode = 1; // à afficher sur la fenêtre

  int decalageVertical;

  Window () {
    super();
    PApplet.runSketch(new String[] {this.getClass().getName()}, this); // à retravailer

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
}
