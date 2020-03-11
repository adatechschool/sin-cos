class Button {
  int x, y, w, h, textSize;
  String text;
  PFont textFont;
  boolean state = false;
  Button (int _x, int _y, int _w, int _h, int size, PFont font, String insertTextHere) {
    x = _x; y = _y; w = _w; h = _h;
    textSize = size;
    textFont = font;
    text = insertTextHere;
  }
  
  void hover(color[] colors) {
    display(colors[3], colors[int(touched()) + int(touched() ? mousePressed:false)]);
  }
  
  void isClicked() {
    if (touched()) state = !state;
  }
  
  private void display(color textColor, color rectColor) {
    fill(rectColor); stroke(rectColor);
    rect(x, y, w, h, 20);

    fill(textColor); stroke(textColor);
    textAlign(CENTER, CENTER);
    textFont(textFont, textSize);
    text(text, x, y, w, h);
  }

  private boolean touched() {
    return (mouseX > x) && (mouseX < x + w) && (mouseY > y) && (mouseY < y + h);
  }
}
