class Nave {
  SoundFile moveAliens, deaAliens, disparosong, deadNave, win, songMenu;
  PImage nave;
  int posX, posY, tam, vida;
  Bala disparo;
  Nave() {
    disparo = new Bala();
    nave = loadImage("nave.png");
  }

  void iniciar() {
    vida = 3;
    tam =width/10;
    posX = width/2-tam/2;
    posY = height-100;
  }
  void dibujar() {
    disparo.dibujar(posX);
    image(nave, posX, posY, tam, tam);
    vida();
  }

  void vida() {
    textSize(8);
    fill(255, 0, 0);
    text("VIDAS", width/30, height-5);
    fill(255);
    text(vida, width/7, height-5);
  }
  void moverIzquierda() {
    posX-=10;
  }
  void moverDerecha() {
    posX+=10;
  }
  void teclaPresionada() {

    if (key == 'a' || key == 'A') {
      if (posX > 0) {
        moverIzquierda();
      }
    }
    if (key == 'd' || key == 'D') {
      if (posX < width-tam) {
        moverDerecha();
      }
    }
    if (keyCode == ENTER) {
      naveDispara();
      disparoSong.play();
    }
  }
  void naveDispara() {
    disparo.disparo = true;
  }
}
