class Satelite {
  PImage satelite;
  int posX, posY, anchura, altura;
  Satelite(String ImagenDelSatelite, int posX_, int posY_, int anchura_, int altura_) {
    satelite = loadImage(ImagenDelSatelite);
    posX = posX_;
    posY= posY_;
    anchura = anchura_;
    altura = altura_;
  }

  void dibujar() {
    image(satelite, posX, posY, anchura, altura);
  }
}
