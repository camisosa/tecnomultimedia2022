class Alien {
  int ancho, alto, posX, posY;
  PImage alien;
  boolean vivo = true;

  Alien(String imagenDelAlien) {
    alien = loadImage (imagenDelAlien);
    ancho= width/17;
    alto= height/30;
  }
  void dibujar(int posXalien, int posYalien) {
    if (vivo) {
      this.posX = posXalien;
      this.posY = posYalien;
      image(alien, posX, posY, ancho, alto);
    }
  }
  void muerto() {
    vivo = false;
    deaAliens.play();
  }
}
