class Boton {
  int tamX, tamY, posX, posY, posXtexto, posYtexto, tamFont;
  String opcion;
  boolean puedoHacerClick;
  Boton(int tamX, int tamY, int posX, int posY, int posXtexto, int posYtexto, int tamFont, String opcion) {
    this.tamX = tamX;
    this.tamY =tamY;
    this.posX = posX;
    this.posY = posY;
    this.posXtexto = posXtexto;
    this.posYtexto = posYtexto;
    this.opcion = opcion;
    this.tamFont=tamFont;
  }
  void dibujar() {
    stroke(255, 0, 0);
    noFill();
    rect(posX, posY, tamX, tamY, 10);
    fill(255);
    textSize(tamFont);
    text(opcion, posXtexto, posYtexto);
    dentroDelBoton();
  }
  void dentroDelBoton() {
    if (mouseX > posX && mouseX <posX+tamX && mouseY > posY && mouseY < posY+tamY) {
      puedoHacerClick = true;
    } else{
      puedoHacerClick = false;
    }
  }
}
