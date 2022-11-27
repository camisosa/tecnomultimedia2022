class Bala {
  PImage bala;
  boolean disparo;
  float posX, posY, velY, miraAngulo, tam;
  Bala() {
    bala = loadImage ("bala.png");
  }
  void dibujar(int posXNave) {
    if (disparo) {
      posY-=10;
      image(bala, posX+15, posY, 20, 20);
    } else {
      posX = posXNave;
      posY= height-100;
    }
    if (posY < -20 ) {
      reiniciarDisparo();
    }
  }
  void reiniciarDisparo() {
    disparo = false;
  }
}
