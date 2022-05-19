//Sosa Camila N. de legajo 88258/3
//Comision 4B 
//Prof: Tobias Albirosa
int pantalla; //VARIABLE QUE VOY A USAR PARA MANEJAR QUE ES LO QUE SE VA A MOSTRAR EN EL PROGRAMA
int mouse; //VAROABLE QUE USO PARA LAS IMAGENES DEL MOUSE
PImage img, mouse1, mouse2, portada;//CARGA DE IMAGENES
int num = 0; // VARIBLE QUE USO PARA PASAR A LA SIGUIENTE IMAGEN
int trans; //LA TRANSPARENCIA DEL CUADRADO
int lleno;//EL COLOR DEL CUADRADO
int tiempo; //TIEMPO QUE MANEJO PARA PASAR A LA SIGUIENTE IMAGEN
PFont font;

void setup() {
  size(720, 470);
  mouse1 = loadImage ("mouse1.png");
  mouse2 = loadImage ("mouse2.png");
  portada = loadImage ("15.png");
  font = loadFont ("Consolas-Bold-48.vlw");
  rectMode(CENTER);
}
void draw() {
  background(200);
  //println(tiempo, num); //ME IMPRIME LAS VARIABLES
  if (pantalla == 0) {//SE MUESTRA EL INICIO, JUNTO CON EL BOTON PARA INICIAR LOS CREDITOS
    image(portada, 0, 0, width, height); 
    fill(lleno, trans);
    noStroke();
    rect(width/2, 80, 400, 120, 28);
    if (mouseX >= 160 && mouseX <= 560 && mouseY >= 20 && mouseY <= 140) {//SI EL MOUSE ESTA DENTRO DEL CUADRADO LA OPACIDAD AUMENTA Y SE CAMBIA DE COLOR
      trans = 200;
      lleno = #f16959;
    } else {// SI EL MAUSE ESTA FUERA DEL CUADRADO, LA OPACIDAD Y EL COLOR SON OTROS VALORES
      trans = 100;
      lleno = #4e71a6;
    }
    fill(250, 500);
    textFont(font, 60);
    text("CREDITOS", width/2-120, 100);
  } else if (pantalla == 1) {//EMPIEZAN LOS CREDITOS
    tiempo = frameCount; //TIEMPO QUE LE DESIGNO ENTRE CADA IMAGEN 
    if (tiempo > 50) {//SI EL TIEMPO LLEGA A SER MAYOR QUE ... LA VARIABLE NUM AUMENTA UNO Y EL FRAMECOUNT SE RETORNA A 0
      num++;
      frameCount = 0;
    }
    img= loadImage ( num + ".png"); //CARGO LAS IMAGENES CON LA VARIABLE NUM, ENTONCES CUANDO LA VARIABLE NUM AUMENTE, LAS IMAGENES SE CAMBIARAN.
    image(img, 0, 0, width, height);    
    textFont(font, 25);
    if (num == 1) {
      text("Director by\nTONY LEONDIS \nand \nMICHAEL LABASH", width/2+50, height/3+50);
    } else if (num == 2) {    
      text("Produced by\nCHRISTOPHER CHASE", width/6, height/2.5);
    } else if (num == 3) {    
      text("Screenplay by\nTONY LEONDIS &\nMICHAEL LABASH\nand\nALEXA JUNGE\nand\nEDDIE GUZELIAN", width/2, height/4);
    } else if (num == 4) {    
      text("Unit Director\nKELLY BAIGENT", width/7, height/2.5);
    } else if (num == 5) {    
      text("Unit Producer\nKARA LORD PIERSIMONI", width/7, height/2.5);
    } else if (num == 6) {    
      text("Edited by\nWILLIAM J CAPARELLA", width/7, height/2.5);
    } else if (num == 7) {    
      text("Voice Casting\nJAMIE THOMASON", width/8, height/2+20);
    } else if (num == 8) {    
      text("With the Voice Talents \nof\nCHRIS SANDERS \nas Stitch\nDAKOTA FANNINF\nas Lilo", width/2, height/3);
    } else if (num == 9) {    
      text("TIA CARRERE \nas Nina\nDAVID OGDEN STIERS \nas Jumba\nKEVIN MCDONALD\nas Pleakley", width/2, height/3);
    } else if (num == 10) {    
      text("KUNEWA MOOK\nas Kumu \nJASOM SCOTT LEE\nas David", width/7, height/6);
    } else if (num == 11) {    
      text("Original Score Composed\nand Conducted by\nJOEL MCNEELY", width/7, height/2-20);
    } else if (num == 12) {    
      text("Art Director\nMARYANN THOMAS", width/2, height/3+50);
    } else if (num == 13) {    
      text("Associate Producers\nANGI DYSTE\nCHRISIE ROSENTHAL", width/8, height/2);
    } else if (num == 14) {    
      text("“ALWAYS”\nWritten by\nALEXA JUNGE\nand\nJEANINE TESORI", width/8, height/3);
    }
  }
  if (mouse == 0) { //SI MOUSE ES IGUAL A MOUSE 0, SE MUESTRA EL PRIMER STITCH
    image(mouse2, mouseX-45, mouseY-45, 90, 90);
  } else if (mouse == 1) { //SI MOUSE ES IGUAL A MOUSE 1, SE MJUESTRA EL SEGUNDO STITCH
    image(mouse1, mouseX-45, mouseY-45, 90, 90);
  }
  if (mouse >= 2) {// SI MOUSE SE MAYOR/IGUAL A QUE 2, MOUSE VUELVE A 0
    mouse=0;
  }
  if (num > 14) {//CUANDO LA VARIBLE NUM SEA MAYOR QUE 14,EL FRAMECOUNT Y LA VARIABLE PANTALLA SERAN IGUAL A 0, VOLVIENDO A LA PANTALLA INCIO
    num=0;
    pantalla = 0;
    frameCount = 0;
  }
}
void mouseClicked() {
  mouse++; //HACIENDO CLIKC SE SUMAN LOS MOUSE, SE CAMBIAN LOS STITCH´S
  if ( mouseX >= 160 && mouseX <= 560 && mouseY >= 20 && mouseY <= 140) { // SI EL MOUSE ESTA DENTRO DEL CUADRADO
    if (pantalla == 0) {//LAS PANTALLAS SE SUMAN CADA VEZ QUE SE HAGA CLICK
      pantalla++;
    }
  }
}
