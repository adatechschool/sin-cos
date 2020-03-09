class Window extends PApplet {
  PGraphics display;

  int frequence = 1;
  int intensite = 0;
  int nombrePeriode = 1; // à afficher sur la fenêtre

  int decalageVertical = height / 2;
  
  Window (String name) {
    super();
    PApplet.runSketch(new String[] {name}, this);
    
  }
  void settings() {
    size(600, 200);
  }
  void setup(){
    background(0);
    stroke(127, 255, 127);
    noFill();
  }
}
