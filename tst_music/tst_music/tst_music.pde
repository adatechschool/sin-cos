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
float volume = 0.5;
int decalageVertical;

void setup() {
  size(600, 800);
  background(0);
  noFill();
  
  decalageVertical = height / 2;
  
  minim = new Minim(this);
  ping = minim.loadFile("Cant_Keep_Me_Down.mp3", 2048);
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

  // ligne qui bouge selon le son
   clear();
     for(int i = 0; i < 100; i = i + 10)
  {
    float choix = random(5);
    int[] entiers = {100, 200, 300, 400, 500};
    if (int(choix) == 3)
    {
    fill(random(255), random(155), random(200));
    }
    ellipse(entiers[int(choix)], entiers[int(choix)] + ping.left.get(i)*200,  i+1, ping.left.get(i+1)*200);
  }
  for(int i = 0; i < ping.bufferSize() - 1; i++)
  {
    line(i, 400  + ping.left.get(i)*100,  i+1, 350  + ping.left.get(i+1)*100);
  }
  
}

// niveau volume
void keyPressed(){
  if (key == '+')
    ping.setGain(volume ++);
  if (key == '-')
    ping.setGain(volume --);
  
// arreter et reprendre musique
  if (key == ' ')
   ping.pause();
  if (key == 'p')
   ping.play();
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
