class UI {
  PFont uiFont;
  int fontSize = 16;
  color[] colorTheme = new color[4];
  ArrayList<Button> simpleButtonList = new ArrayList<Button>();

  UI (String font, int fontSize, color[] theme) {
    uiFont = createFont(font, fontSize, true);
    arrayCopy(theme, colorTheme);
  }
  
  void newSimpleButton(int x, int y, int w, int h, String text) {
    simpleButtonList.add(new Button(x, y, w, h, text));
  }
  
  void update() {
    for (Button button: simpleButtonList) {
      button.update(uiFont, fontSize, colorTheme);
    }
  }
}
