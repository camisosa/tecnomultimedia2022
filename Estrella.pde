class Estrella {
  PImage estrella;
  Estrella() {
    estrella = loadImage ("estrella.jpg");
  }

  void dibujar() {
    image(estrella,0,0,width*2,height*2);
  }
}
