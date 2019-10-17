//test1

// Importer la bibliotheques "Sound" à partir de sketch 
import processing.sound.*;

float intensite = 30; // volume de la note
float frequence = 10; // hauteur de la note
int decalage ; // Origine de la courbe

void setup () {
  
 size (600, 200);
 decalage = height /2 ;
  background (0);
  
  
  noFill ();
  stroke (127, 255, 127);
  
  //SinOsc bip = new SinOsc(this);
      //bip.play(220, 1);
}


void draw () {
  clear ();
  // gestion des évènements
  if (mousePressed == true)  {
   println(abs((height - mouseY) - decalage));
  }

  // Dessine une onde
  beginShape ();
  for (int i = 0; i < width; i++)
    vertex (i, decalage + sin(radians(i*frequence+ millis() / 5 ))* intensite); //millis ()/n : n plus grand = plus lent
  endShape ();
 
}
