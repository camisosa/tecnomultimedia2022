class Sol {
  SistemaSolar sistema;
  PImage estrellaSolar;
  Sol(String estrella) {
    sistema = new SistemaSolar();
    estrellaSolar = loadImage (estrella);
  }

  void dibujar() {
    imageMode(CENTER);
    sistema.dibujar();
    image(estrellaSolar, width/2, height/2, 150, 150);
  }
}
