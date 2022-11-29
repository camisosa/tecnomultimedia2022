class Galaga {
int nivel;
  int score, maxScore;
  int posXaliens;
  int posYaliens;
  int espacioEntreFilas = 50;
  int cantComlumnas = 8;
  int cantFilas = 3 ;
  int cantAliens;
  boolean direccionAliens, perdio, gano, jugando;
  Alien aliens [][] = new Alien [cantComlumnas] [cantFilas];
  Nave jugador;
  Boton botonAtras;
  Galaga() {
    score = 0;
    maxScore = 0;
    jugador = new Nave();
    for (int i = 0; i < cantComlumnas; i++) {  
      for (int j = 0; j < cantFilas; j++) {    
        aliens[i][j] = new Alien();
      }
    }
    botonAtras = new Boton(125, 30, 1, height/200, 5, 0+height/30, 8, "Volver al menu");
  }
  void dibujar() {
    botonAtras.dibujar();
    jugador.dibujar();
    dibujarAliens();
    balaTocaAlien();
    alienTocaNave();
    dibujarScore();
siguienteNivel ();
    gameOver();
    win();
  }
  void dibujarScore() {
    fill(255, 0, 0);
    text("SCORE ", width/30, height-25);
    fill(255);
    text(score, width/7, height-25);
    fill(255, 0, 0);
    text("HIGH SCORE ", width/30, height-45);
    fill(255);
    text(maxScore, width/5, height-45);
    if (score > maxScore) {
      maxScore=score;
    }
  }

  void dibujarAliens() {
    for (int i = 0; i < cantComlumnas; i++) {
      for (int j = 0; j < cantFilas; j++) {         
        aliens[i][j].dibujar(posXaliens+espacioEntreFilas*i, posYaliens+espacioEntreFilas*j);
      }
    }
if(nivel == 1){
    if (direccionAliens) {
      posXaliens++;
    } else {
      posXaliens--;
    }
    if (posXaliens > 120|| posXaliens < 0) {
      direccionAliens = !direccionAliens;
      moveAliens.play();
    }
    if (posXaliens == 120|| posXaliens == 0) {
      posYaliens+=10;
    }
}
if(nivel == 2){
    if (direccionAliens) {
      posXaliens+=5;
    } else {
      posXaliens-=5;
    }
    if (posXaliens > 120|| posXaliens < 0) {
      direccionAliens = !direccionAliens;
      moveAliens.play();
    }
    if (posXaliens == 120|| posXaliens == 0) {
      posYaliens+=10;
    }
}
  }

  void balaTocaAlien() {
    for (int i = 0; i < cantComlumnas; i++) {
      for (int j = 0; j < cantFilas; j++) {         
        if (jugador.disparo.disparo && aliens[i][j].vivo && dist(jugador.disparo.posX, jugador.disparo.posY, aliens[i][j].posX, aliens[i][j].posY) < 20) {
          aliens[i][j].muerto();           
          jugador.disparo.reiniciarDisparo();
          score+=100;
          cantAliens-=1;
        }
      }
    }
  }

  void alienTocaNave() {
    for (int i = 0; i < cantComlumnas; i++) {
      for (int j = 0; j < cantFilas; j++) {       
        if (dist(jugador.posX, jugador.posY, aliens[i][j].posX, aliens[i][j].posY) < 12) {
          jugador.vida -=1;
aliens[i][j].muerto();
        }
      }
    }
  }
void siguienteNivel (){
if (nivel == 1 && cantAliens == 0){
nivel = 2;
}
if (nivel == 2){
for (int i = 0; i < cantComlumnas; i++) {
      for (int j = 0; j < cantFilas; j++) {
        aliens[i][j].vivo = true;
cantAliens = cantFilas*cantComlumnas;
      }
    }
}
}
  void gameOver() {
    if (jugador.vida <= 0) {
      perdio = true;
      jugando = false;
      deadNave.play();
    }
  }
  void win() {
    if (cantAliens == 0) {
if(nivel == 2){
      gano = true;
      jugando = false;
      winSong.play();
    }
}
  }

  void iniciar() {
nivel = 1;
    jugando = true;
    gano = false;
    perdio = false;
    jugador.iniciar();
    posXaliens = 0;
    posYaliens = 0;
    score = 0;
    cantAliens = cantFilas*cantComlumnas;
    for (int i = 0; i < cantComlumnas; i++) {
      for (int j = 0; j < cantFilas; j++) {
        aliens[i][j].vivo = true;
      }
    }
  }
  void teclaPresionada() {
    if ( jugando == true) {
      jugador.teclaPresionada();
    }
  }
  void hiceclick() {
    if (botonAtras.hiceClick) {
      iniciar();
    }
  }
}
