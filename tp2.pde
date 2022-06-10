//Sosa Camila 88258/3
//link del video https://youtu.be/iI_tFKAEitU
int pantalla, fondo, estrella;
void setup() {
  size(400, 400);
}
void draw() {
  if (pantalla == 0) {//SI PATALLA ESTA EN 0 PARECE QUE "SE ACERCA"
    push();
    estrella(0, 255);
    pop();
    cuadrado();
  } else if (pantalla == 1) {//SI PATALLA ESTA EN 1 PARECE QUE "SE ALEJA"
    push();
    estrella(255, 0);//FUNCION QUE DIBUJA Y PINTA EL FONDO Y LAS ESTRELLAS/CONTORNO
    pop();
    cuadrado();//FUNCION QUE DIBUJA LOS CUADRADOS
  } else if (pantalla == 2) {//SI PATALLA ESTA EN 2 DEPENDIENDO DONDE ESTE EL MOUSE, SE ACERCA O ALEJA (ESQUINA SUPERIOR IZQUIEDA SE "ALEJA", ESQUINA INFERIOR DERECHA SE "ALEJA")
    push();
    estrella(estrella, fondo);//FUNCION QUE DIBUJA Y PINTA EL FONDO Y LAS ESTRELLAS/CONTORNO
    pop();
    cuadrado();//FUNCION QUE DIBUJA LOS CUADRADOS
    estrella= round(map(mouseX, 0, width, 255, 0));//MODIFICA EL COLOR DE LAS "ESTRELLAS/CONTORNO"
    fondo= round(map(mouseY, 0, height, 0, 255));//MODIFICA EL FONDO/BACKGROUND
  } else if (pantalla == 3) {
    pantalla=0;
  }
}
void mouseClicked() {
  pantalla++;
}
