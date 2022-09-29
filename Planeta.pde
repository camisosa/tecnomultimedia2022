class Planeta {
  PImage planeta;
  int posX, posY, ancho, alto;
  Planeta (String imagenDelPlaneta, int posX_, int ancho_, int alto_) {
    planeta = loadImage (imagenDelPlaneta);
    posX= posX_;
    ancho = ancho_;
    alto = alto_;
  }

  void dibujar() {
    image(planeta, posX, 0, ancho, alto);
  }
}
