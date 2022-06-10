void estrella(int e, int f) {//VARIABLES QUE MODIFICAN EL COLOR DE LOS CONTORNES Y EL FONDO
  background(f);
  translate(203, 203);//MOVI EL EJE x,Y AL CENTRO DEL CUADRADO
  rotate(radians(45));//LE DI UN GRADO DE 40°
  rectMode(CENTER);//LOS CUDRADOS SE DIBUJAN DESDEL CENTRO
  noFill();//NO RELLENO
  stroke(e);//COLOR DEL CONTORNO
  strokeWeight(30);//GROSOR
  for (int i=0; i<5; i++) {
    rect(0, 0, i*123, i*123);//SE DIBUJAN RECTANCULOS SIN RELLENO CON UN ANGULO DE 45° 
  }
}
