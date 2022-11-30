class Galaga {
  int nivel;
  boolean direccionaliens, teQuedasteSinVida, hasMatadoATodosLosAliens, jugando;
  int score, maxScore;
  int posXaliensVerdes, posXaliensMorados;
  int posYaliensVerdes, posYaliensMorados;
  int espacioEntreFilas = 50;
  int cantComlumnas = 8;
  int cantFilas = 3;
  int cantAliensVerdesVivos, cantAliensMoradosVivos;
  Alien aliensVerdes [][] = new Alien [cantComlumnas] [cantFilas];
  Alien aliensMorados [][] = new Alien [cantComlumnas] [cantFilas];
  Nave jugador;
  Boton botonAtras;
  Galaga() {
    score = 0;
    maxScore = 0;
    jugador = new Nave();
    for (int i = 0; i < cantComlumnas; i++) {  
      for (int j = 0; j < cantFilas; j++) {    
        aliensVerdes[i][j] = new Alien("alienVerde.png");
        aliensMorados[i][j] = new Alien("alienMorado.png");
      }
    }
    botonAtras = new Boton(125, 30, 1, height/200, 5, 0+height/30, 8, "Volver al menu");
  }

  void dibujar() {
    jugador.dibujar();
    dibujarAliens();
    balaTocaAlien();
    alienTocaNave();
    dibujarScore();
    verificarSiPasoDeNivel();
    verificarSiPerdio();
    verificarSihasMatadoATodosLosAliens();
    botonAtras.dibujar();
    dibujarNiveles();
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

  void dibujarNiveles() { 
    textSize(15);
    fill(255, 0, 0);
    text("LEVEL ", width/2-50, 15);
    fill(255);
    text(nivel, width/2+40, 15);
  }

  void dibujarAliens() {
    if (nivel == 1) {
      for (int i = 0; i < cantComlumnas; i++) {
        for (int j = 0; j < cantFilas; j++) {         
          aliensVerdes[i][j].dibujar(posXaliensVerdes+espacioEntreFilas*i, posYaliensVerdes+espacioEntreFilas*j);
        }
      }

      if (direccionaliens) {
        posXaliensVerdes++;
      } else {
        posXaliensVerdes--;
      }

      if (posXaliensVerdes > 120|| posXaliensVerdes < 0) {
        direccionaliens = !direccionaliens;
        posYaliensVerdes+=10;
        moveAliens.play();
      }
      for (int i = 0; i < cantComlumnas; i++) {
        for (int j = 0; j < cantFilas; j++) {  
          if (posYaliensVerdes > height) {
            posYaliensVerdes = 0-aliensVerdes[i][j].alto;
          }
        }
      }
    }

    if (nivel == 2) {
      for (int i = 0; i < cantComlumnas; i++) {
        for (int j = 0; j < cantFilas; j++) {         
          aliensMorados[i][j].dibujar(posXaliensMorados+espacioEntreFilas*i, posYaliensMorados+espacioEntreFilas*j);
        }
      }

      if (direccionaliens) {
        posXaliensMorados+=3;
      } else {
        posXaliensMorados-=3;
      }

      if (posXaliensMorados > 120|| posXaliensMorados < 0) {
        direccionaliens = !direccionaliens;
        posYaliensMorados+=10;
        moveAliens.play();
      }
      for (int i = 0; i < cantComlumnas; i++) {
        for (int j = 0; j < cantFilas; j++) {  
          if (posYaliensMorados > height) {
            posYaliensMorados = 0-aliensMorados[i][j].alto;
          }
        }
      }
    }
  }

  void balaTocaAlien() {
    if (nivel == 1) {
      for (int i = 0; i < cantComlumnas; i++) {
        for (int j = 0; j < cantFilas; j++) {
          if ( jugador.disparo.disparo && aliensVerdes[i][j].vivo && dist(jugador.disparo.posX, jugador.disparo.posY, aliensVerdes[i][j].posX, aliensVerdes[i][j].posY) < 20) {
            aliensVerdes[i][j].muerto();           
            jugador.disparo.reiniciarDisparo();
            score+=100;
            cantAliensVerdesVivos-=1;
          }
        }
      }
    }

    if (nivel == 2) {
      for (int i = 0; i < cantComlumnas; i++) {
        for (int j = 0; j < cantFilas; j++) {
          if (jugador.disparo.disparo && aliensMorados[i][j].vivo && dist(jugador.disparo.posX, jugador.disparo.posY, aliensMorados[i][j].posX, aliensMorados[i][j].posY) < 20) {
            aliensMorados[i][j].muerto();           
            jugador.disparo.reiniciarDisparo();
            score+=100;
            cantAliensMoradosVivos-=1;
          }
        }
      }
    }
  }
  void alienTocaNave() {
    if (nivel == 1) {
      for (int i = 0; i < cantComlumnas; i++) {
        for (int j = 0; j < cantFilas; j++) {       
          if (dist(jugador.posX, jugador.posY, aliensVerdes[i][j].posX, aliensVerdes[i][j].posY) < 12 && aliensVerdes[i][j].vivo) {
            jugador.vida -=1;
            aliensVerdes[i][j].muerto();
            cantAliensVerdesVivos--;
          }
        }
      }
    }

    if (nivel == 2) {
      for (int i = 0; i < cantComlumnas; i++) {
        for (int j = 0; j < cantFilas; j++) {       
          if (dist(jugador.posX, jugador.posY, aliensMorados[i][j].posX, aliensMorados[i][j].posY) < 12 && aliensMorados[i][j].vivo) {
            jugador.vida -=1;
            aliensMorados[i][j].muerto();
            cantAliensMoradosVivos--;
          }
        }
      }
    }
  }

  void verificarSiPasoDeNivel () {
    if (cantAliensVerdesVivos == 0) {
      nivel = 2;
    }
  }

  void verificarSiPerdio() {
    if (jugador.vida <= 0) {
      teQuedasteSinVida = true;
      jugando = false;
      deadNave.play();
    }
  }

  void verificarSihasMatadoATodosLosAliens() {
    if (cantAliensMoradosVivos == 0 && jugador.vida > 0 ) {
      hasMatadoATodosLosAliens = true;
      jugando = false;
      winSong.play();
    }
  }

  void iniciar() {
    nivel = 1;
    jugando = true;
    hasMatadoATodosLosAliens = false;
    teQuedasteSinVida = false;
    score = 0;
    jugador.iniciar();
    cantAliensVerdesVivos = cantComlumnas*cantFilas;
    cantAliensMoradosVivos = cantComlumnas*cantFilas;
    posXaliensVerdes = 0;
    posXaliensMorados = 0;
    posYaliensVerdes = 0;
    posYaliensMorados = 0;
    for (int i = 0; i < cantComlumnas; i++) {
      for (int j = 0; j < cantFilas; j++) {
        aliensVerdes[i][j].vivo = true;
        aliensMorados[i][j].vivo = true;
      }
    }
  }
  void teclaPresionada() {
    if ( jugando == true) {
      jugador.teclaPresionada();
    }
  }
}
