class Pantalla {
  String text1, text2;
  int posX, posY, ancho, alto;
  Boton botonAtras;
  Pantalla(String text1, String text2, int posX, int posY, int ancho, int alto) {
    this.text1 = text1;
    this.text2 = text2;
    this.posX = posX;
    this.posY = posY;
    this.ancho = ancho;
    this.alto = alto;
    botonAtras = new Boton(125, 30, 1, height/200, 5, 0+height/30, 8, "Volver al menu");
  }

  void dibujar() {
    textSize(10);
    noFill();
    stroke(255, 0, 0);
    rect(posX, posY, ancho, alto, 10);
    fill(255, 0, 0);
    text(text1, posX+ancho/3, posY+50);
    fill(255);
    text(text2, posX+20, posY+100);
    botonAtras.dibujar();
  }
}
