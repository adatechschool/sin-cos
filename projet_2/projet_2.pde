float intensite = 30; // volume de la note
float frequence = 3 ;// hauteur de la note

void setup() {
  size (600, 200);
  background (0);
  
  noFill ();
  stroke (127, 255, 127) ;
 //fill (127, 255, 127);
  
}
void draw ()
{
  clear();
  beginShape ();
  for (int i = 0; i < width; i++){
    vertex(i, height/2 + sin(radians(i*frequence+ millis ()/2))* intensite); //millis ()/n : n plus grand = plus lent
  }
    endShape();
}
