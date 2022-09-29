class  Nebula {
  PImage [] nebula = new PImage [4] ;
  int posX, posY, numDeImagen;
  Nebula(int numDeImagen_, int posX_, int posY_) {
    for ( int i = 0; i<4; i++) {
      nebula [i]= loadImage (i+".png");
    }
    posX= posX_;
    posY = posY_;
    numDeImagen = numDeImagen_;
  }
  void dibujar() {
    image(nebula[numDeImagen], posX, posY, 50, 50);
  }
}
