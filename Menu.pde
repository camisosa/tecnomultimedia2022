class Menu {
  Estrella [] estrellas = new Estrella[50];
  Galaga galaga;
  Pantalla creditos, instruciones, perdio, gano;
  Boton botonCreditos, botonPlay, botonInstrucciones;
  PFont fuente = createFont("galaga.ttf", 15);
  int pantalla;
  boolean songPlay;
  Menu() {
    galaga = new Galaga();
    for (int i = 0; i < estrellas.length; i++) {
      estrellas[i] = new Estrella();
    }
    botonCreditos = new Boton(150, 50, width/3, height-200, width/3+40, height-170, 10, "CREDITOS");
    creditos = new Pantalla("REALIZADO POR:", "CAMILA SOSA N DE LEGAJO 88258/3, \nESTUDIANTE DE LA FACULTAD DE ARTES,\nEL 24 DE NOVIEMBRE DEL AÑO 2022", 40, 40, 420, 535);
    botonInstrucciones = new Boton(150, 50, width/3, height/2, width/3+10, height/2+30, 10, "INSTRUCCIONES");
    instruciones = new Pantalla("COMO JUGAR:", "DOS HORDAS DE ALIENS SE ACERAN A LA\nTIERRA, NO PERMITAS QUE LOS ALIENS\nLLEGUEN A NOSOTROS\nDISPARA CON LA TECLA ENTER,\nMUEVE LA NAVE A LA IZQUIERDA CON\nLA TECLA A Y MUEVETE A LA DERECHA\nCON LA TECLA D.\n\nRECUERDA QUE SOLO TIENES TRES VIDAS, SI\nUN ALIEN TE TOCA PIERDES UNA.\n\n!TEN CUIDADO QUE LOS ALIENS MORADOS SE\nMUEVEN MAS RAPIDOS!", 40, 40, 420, 535);
    botonPlay = new Boton(150, 50, width/3, height/3, width/3+50, height/3+30, 10, "PLAY");
    perdio = new Pantalla("GAME OVER", "LOS ALIENS TE HAN DEJADO SIN VIDA", width/10, width/3, 400, 150);
    gano = new Pantalla("GANASTE", "HAZ CONSEGIDO MATAR A TODOS LOS\nALIENS", width/10, width/3, 400, 150);
  }
  void dibujar() {
    background(0);
    dibujarFondo();
    textFont(fuente);
    reproduirCancionDeMenu();
    println( galaga.teQuedasteSinVida, galaga.hasMatadoATodosLosAliens, galaga.jugando);
    if (pantalla == 0) {
      galagaTexo();
      botonCreditos.dibujar();
      botonInstrucciones.dibujar();
      botonPlay.dibujar();
    }     
    if (pantalla == 1) {
      if (galaga.jugando) {
        galaga.dibujar();
      }
      if (galaga.hasMatadoATodosLosAliens) {
        gano.dibujar();
      }
      if (galaga.teQuedasteSinVida) {
        perdio.dibujar();
      }
    }
    if (pantalla == 2) {
      instruciones.dibujar();
    }
    if (pantalla == 3) {
      creditos.dibujar();
    }
  }
  void teclaPresionada() {
    if (pantalla == 1) {
      galaga.teclaPresionada();
    }
  }
  void hiceClick() {
    if (pantalla == 0) {
      if (botonPlay.puedoHacerClick) {
        pantalla = 1;
        galaga.iniciar();
      }
      if (botonInstrucciones.puedoHacerClick) {
        pantalla = 2;
      }
      if (botonCreditos.puedoHacerClick) {
        pantalla = 3;
      }
    } else if (pantalla != 0) {
      if (pantalla == 2) {
        if (instruciones.botonAtras.puedoHacerClick) {
          pantalla = 0;
        }
      }
      if (pantalla == 3) {
        if (creditos.botonAtras.puedoHacerClick) {
          pantalla = 0;
        }
      }
      if (pantalla == 1) {
        if (galaga.jugando == false) {
          if (perdio.botonAtras.puedoHacerClick || gano.botonAtras.puedoHacerClick) {
            pantalla = 0;
          }
        }
        if (galaga.botonAtras.puedoHacerClick) {
          pantalla = 0;
        }
      }
    }
  }
  void galagaTexo() {
    fill(255, 0, 0);
    textSize(50);
    text("GALAGA", width/5, height/5);
  }
  void dibujarFondo() {
    for (int i = 0; i < estrellas.length; i++) {
      estrellas[i].caida();
      estrellas[i].dibujar();
    }
  }
  void reproduirCancionDeMenu() {
    if (pantalla != 1) {
      if (frameCount == 1) {
        songPlay = true;
      } else {
        songPlay = false;
      }
      if (frameCount > 385) {
        frameCount = 0;
      }
      if (songPlay) {
        songMenu.play();
      }
    } else {
      songMenu.stop();
    }
  }
}
