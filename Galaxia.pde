class Galaxia {
  Estrella estrellas;
  SistemaSolar sistema;
  Nebula [] nebulosa = new Nebula [4];
  Galaxia() {
    sistema = new SistemaSolar();
    estrellas = new Estrella();
    nebulosa[0] = new Nebula(0, round(random(0, width)), round(random(0, height)) );
    nebulosa[1] = new Nebula(1, round(random(0, width)), round(random(0, height)) );
    nebulosa[2] = new Nebula(2, round(random(0, width)), round(random(0, height)) );
    nebulosa[3] = new Nebula(3, round(random(0, width)), round(random(0, height)) );
  }

  void dibujar() {
    estrellas.dibujar();
    for ( int i = 0; i<4; i++) {
      nebulosa[i].dibujar();
    }
    sistema.dibujar();
  }
}
