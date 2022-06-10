void cuadrado() {
  for (int i= 0; i<width; i++) {//CICLO FOR ANIDADO
    for (int j = 0; j<height; j++) {
      noStroke();//NO CONTOR
      if ((i+j)%2 == 0) { //SI I + J DIVIDO 2 ES == A 0
        fill(80); //LOS RECTANCULOS SE PINTAN DE ESTE COLOR
      } else {//DE LO CONTRARIO
        fill(150); //LOS RECTANCULOS SE PINTAN DE ESTE COLOR
      }
      rect(j*45, i*45, 45, 45, 12); //SE DIBUJAN LOS RECTANCULOS EN 9 FILAS Y 9 COLOMNAS
    }
  }
}
