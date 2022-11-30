class Estrella {
  float posX = random(width);
  float posY = random(height);
  float velocidadDeCaida = random(4, 10);

  Estrella() {
  }
  void dibujar() {
    caida();
    stroke(255);
    line(posX, posY, posX, posY+2);
  }
  void caida() {
    posY = posY + velocidadDeCaida;
    if (posY>height) {
      posY = random(-10, -300);
    }
  }
}
