class Button {
  int x, y, w, h;
  String text;
  Button (int _x, int _y, int _w, int _h, String insertTextHere) {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    text = insertTextHere;
  }
  
  void update(PFont font, int size, color[] colors) {
    fill(colors[moused()]);
    stroke(colors[moused()]);
    rect(x, y, w, h, 20);
    textFont(font, size);
    textAlign(CENTER, CENTER);
    fill(colors[3]);
    text(text, x, y, w, h);
  }

  private int moused() {
    if (((mouseX > x) && (mouseX < x + w)) && ((mouseY > y) && (mouseY < y + h))) {
      if(mousePressed) {
        return 2;
      }
      return 1;
    }
    return 0;
  }
}
