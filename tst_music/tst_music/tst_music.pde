// importation de la bibliothèque "minim" dans processing
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer ping;

// assignation des valeurs aux variables
int frequence = 1;
int intensite = 0;
int nombrePeriode = 1;
int millis = 0;

int decalageVertical;

void setup() {
  size(600, 200);
  background(0);
  noFill();
  
  decalageVertical = height / 2;
  
  minim = new Minim(this);
  ping = minim.loadFile("Miracle.mp3", 2048);
}

void draw() {
  // determination couleur
  stroke(random(255), random(255), random(255));
  // gestion des événements
  if (mousePressed)  {
    frequence = constrain(mouseX, 1, width);
    intensite = height - constrain(mouseY, 0, height) - decalageVertical;

    ping.play(millis);
  }
  // clique souris
  if (keyPressed) {
    if (key == '+')
      nombrePeriode++;
    if (key == '-')
      nombrePeriode--;
  }
  // ligne qui bouge selon le son
   clear();
  for(int i = 0; i < ping.bufferSize() - 1; i++)
  {
    line(i, height/2  + ping.left.get(i)*100,  i+1, 50  + ping.left.get(i+1)*100);
  }
  
}

// mouseWheel() est appelée nativement par draw()
void mouseWheel(MouseEvent event) {
  nombrePeriode += event.getCount();
}

// fin minim
void stop() {
  ping.close();
  minim.stop();
  super.stop();
}
