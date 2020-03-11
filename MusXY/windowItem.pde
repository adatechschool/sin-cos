class WindowItem extends UI {
  WindowItem (String font, int fontSize, color[] theme) {
    super(font, fontSize, theme);
    uiFont = createFont(font, fontSize, true);
    arrayCopy(theme, colorTheme);
  }
}
