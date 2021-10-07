PImage [] flujoA = new PImage [13];
PImage [] flujoB = new PImage [8];
PImage [] flujoBA = new PImage [4];
PImage [] flujoBC = new PImage [3];
PImage [] flujoB1 = new PImage [2];
PImage [] flujoB2 = new PImage [3];
PImage [] flujoC = new PImage [9];
PImage [] image = new PImage [3];
boolean [] flujo = new boolean [17];
int [] move = new int [4];
int t;
PImage fondo;
PFont font;
boolean inicio = false;
boolean aventura = false;
boolean creditos = false;
boolean pantalla = false;
void setup(){
size(600,400);
font = loadFont ("BellMTBold-48.vlw");
fondo = loadImage ("fondo.jpg");
for (int i = 0; i< 13; i++){flujoA [i] = loadImage("fluejoA_ ("+ i +").png");}
for (int i = 0; i< 8; i++){flujoB [i] = loadImage("flujoB_ (" + i +").png");}
for (int i = 0; i< 4; i++){flujoBA [i] = loadImage("flujoBA_ (" + i +").png");}
for (int i = 0; i< 3; i++){flujoBC [i] = loadImage("flujoBC_ ("+ i +").png");}
for (int i = 0; i< 2; i++){flujoB1 [i] = loadImage("flujoB1_ ("+ i +").png");}
for (int i = 0; i< 3; i++){flujoB2 [i] = loadImage("flujoB2_ ("+ i +").png");}
for (int i = 0; i< 8; i++){flujoC [i] = loadImage("flujoC_ ("+ i +").png");}
for (int i = 0; i< 3; i++){image [i] = loadImage("creditos (" + i +").png");}
for (int i = 0; i< 17; i++){flujo [i] = false;}
}//fin setup
void draw(){
background(200);
if(aventura == false && creditos == false){inicio = true; if (inicio){
  image(fondo,0,0,width,height);
  if(boton(50,140)){aventura = true; flujo[0]=true; }
  if(boton(400,140)){creditos = true;}
  fill(#000000);
  textFont(font,30);
  text("Aventura",width/2-235,height/2+20);
  text("Creditos",width/2+120,height/2+20);
  text("EL PATITO FEO",width/2-120,100);
  textFont(font,15);
  text("Cuento de Hans Christian Andersen",width/2-120,380);
  }
}//FIN DE IF-INICIO
textSize(18);
if (aventura){
  background(0);
  fill(255); 
  if (flujo[0]){//FLUJO A 
  if(t >= 0 && t < 1 ){image(flujoA[0],0,0,width,height-70);text("La pareja esta feliz de que al fin se abrirían los huevos y conocerían a sus\nhijos, pero el tiempo pasaba y ellos no salía.",5,350);}
  if(t >= 1 && t < 2){image(flujoA[1],0,0,width,height-70);text("Luego de minutos de espera, finalmente los huevos se abrieron y de ellos\nsalieron cuatro hermoso patitos. Los padres estaban muy contento por\nello.",5,350);}
  if(t >= 2 && t < 3){image(flujoA[2],0,0,width,height-70);text("Aun que pronto su felicidad fue interrumpida por el quinto huevo, el cual\naun no se había abierto y los hizo preocupar.",5,350);}
  if(t >= 3 && t < 4){image(flujoA[3],0,0,width,height-70);text("Hasta que finalmente se abrio, pero algo los incomodo de el quinto patito\n...",5,350); }
  if(t >= 4 && t < 5){image(flujoA[4],0,0,width,height-70);text("El patito era muy diferente al resto.",5,350);}
  if(t >= 5){image(flujoA[5],0,0,width,height-70);text("Ocasionando un disusion entre los padres\n            ¿Que harian con el?",width/5,350); t=5;
  if(conflicto(width/2-200,height/2)){flujo [1] = true;t=0;flujo[0] = false;}fill(255);text("Quedarse con el",width/2-265,height/2+10);//FLUJO B
  if(conflicto(width/2+200,height/2)){flujo [2] = true;t=0;flujo[0] = false;}fill(255);text("Dejarlo solo",width/2+150,height/2+10);//FLUJO C
  }}//FIN DEL FLUJO A
  if(flujo [1]){ //FLUJO B
  if(t >= 0 && t < 1 ){image(flujoB[0],0,0,width,height-70);text("Aun que les tomo por sorpresa la diferencia que había entre el y los\ndemás, decidieron quedarse con el  ",5,350);}
  if(t >= 1 && t < 2){image(flujoB[1],0,0,width,height-70);text("Pronto la diferencia comenzó a notarse, y su presencia les molestaba\n...",5,350);}
  if(t >= 2 && t < 3){image(flujoB[2],0,0,width,height-70);text("El pequeño comprendio que ya no era aceptado alli, y se termino alejando\nde ellos ..",5,350);} if(t >= 3){flujo[3] = true; t= 0; flujo[1] = false;}
  } //FINAL DEL FLUJO B
  if(flujo[2]){ //FLUJO C
  if(t >= 0 && t < 1 ){image(flujoC[0],0,0,width,height-70);text("Ellos no quisieron que se quedara, decidieron dejarlo solo",5,350);}              
  if(t >= 1 && t < 2 ){image(flujoC[1],0,0,width,height-70);text("Pero el pequeño no parecía entender que no quería que este con ellos,\nasí que los siguió. Eso hizo que mama pata se molestara mucho",5,350);}
  if(t >= 2 && t < 3 ){image(flujoC[2],0,0,width,height-70);text("Por lo que acciono de mala forma, le grito que se fuera",5,350);}
  if(t >= 3 && t < 4 ){image(flujoC[3],0,0,width,height-70);text("Los otros patitos unicamente copiaron el accionar de su madre.",5,350);}if(t >= 4){flujo[3] = true; t= 0; flujo[2] = false;}
  }//FINAL DEL FLUJO C
  if (flujo[3]){ //FLUJO A 
  if(t >= 0 && t < 1 ){image(flujoA[6],0,0,width,height-70);text("Al final del día el patito se quedo solo, sin nadie que lo acompañe,solo se\nhecho a llorar y camino sin rumbo por el bosque",5,350);}
  if(t >= 1 && t < 2 ){image(flujoA[7],0,0,width,height-70);text("Luego de estar un rato largo caminando, su llanto sacio y su estomago\nrugió, señal de que tenia ",5,350);}
  if(t >= 2 && t < 3 ){image(flujoA[8],0,0,width,height-70);text("Camino un poco mas y esucho un ruido en el árbol, volteo a ver en su\ndireccion alli habia una familia de pajaritos y su madre le estaba dando de\ncomer, entonces su estomago volvio a rugir del hambre",5,350);}
  if(t >= 3){image(flujoA[9],0,0,width,height-70);text("Queria comer algo pero sentia que de alguna forma molestaria como paso\nanteriormente.",5,350);t = 3;
  if(conflicto(width/2-200,height/2)){flujo [5] = true;t=0;flujo[3] = false;}fill(255);text("Quedarse solo.",width/2-255,height/2+10);//FLUJO B
  if(conflicto(width/2+200,height/2)){flujo [6] = true;t=0;flujo[3] = false;}fill(255);text("Trepar el árbol.",width/2+140,height/2+10);//FLUJO C
  }}//FIN DEL FLUJO A
  if (flujo[6]){//FLUJO C
  if(t >= 0 && t < 1 ){image(flujoC[4],0,0,width,height-70);text("Su deseo de comer algo era mayor, por lo que comenzó a trepar el árbol\nhasta llegar de al nido.",5,350);}
  if(t >= 1){image(flujoC[5],0,0,width,height-70);text("Allí los pajaritos compartieron su comida con el. En cuanto su apetito\nsacio,les agradeció la comida y bajo del árbol, siguiendo su camino.",5,350);} if(t >= 2){flujo[9] = true; t= 0; flujo[6] = false;}
  }//FIN DEL FLUJO C
  if (flujo[5]){//FLUJO B
  if(t >= 0 && t < 1 ){image(flujoB[2],0,0,width,height-70);text("Tan pronto vio como su madre los quería, se pregunto por que la suya no\nlo queria de la misma forma. Se puso tan triste que volvio a llorar.",5,350);}
  if(t >= 1){image(flujoB[3],0,0,width,height-70);text("Eso llanto llamo la atención de un raton que deambulaba por esos lados,\npor lo que se acerco a el para ofrecer su ayuda ",5,350); t=1;
  if(conflicto(width/2+200,height/2)){flujo [7] = true;t=0;flujo[5] = false;}fill(255);text("No aceptar la\n     ayuda.",width/2+150,height/2);//FLUJO B1
  if(conflicto(width/2-200,height/2)){flujo [8] = true;t=0;flujo[5] = false;}fill(255);text("Aceptar la ayuda",width/2-270,height/2+10);//FLUJO B2
  }}//FIN DEL FLUJO B
  if(flujo[7]){//FLUJO B1
  if (t >= 0 && t < 1 ){image(flujoB1[0],0,0,width,height-70);text("Aun que el raton parecía muy amigable, el decidió seguir su camino.",5,350);}
  if (t >= 1){image(flujoB1[1],0,0,width,height-70);text("Siguió su camino y al fin pudo alimentarse. ",5,350);}if(t >= 2){flujo[9] = true; t= 0; flujo[7] = false;}
  }//FIN DEL FLUJO B1
  if(flujo[8]){//FLUJO B2  
  if (t >= 0 && t < 1 ){image(flujoB2[0],0,0,width,height-70);text("Fue muy amable por parte del raton ayudar a un niño",5,350);}
  if (t >= 1 && t < 2 ){image(flujoB2[1],0,0,width,height-70);text("Primero buscaron comida y en lo que el pequeño comía, le contaba lo que\nhabía pasado al raton ",5,350);}
  if (t >= 2 ){image(flujoB2[2],0,0,width,height-70);text("El raton entonces se dio cuenta que el no era un pato, le explico por que era\ndiferente a sus hermanos y el raton le propuso buscar a su verdadera madre.",5,350);t=2;
  if(conflicto(width/2-200,height/2)){flujo [12] = true;t=0;flujo[8] = false;}fill(255);text("Buscarla.",width/2-240,height/2+10);//FLUJO BA
  if(conflicto(width/2+200,height/2)){flujo [13] = true;t=0;flujo[8] = false;}fill(255);text("No buscarla.",width/2+150,height/2+10);//FLUJO BC
  }}//FIN DEL FLUJO B2
  if(flujo [12]){//FLUJO BA
  if(t >= 0 && t < 1 ){image(flujoBA[0],0,0,width,height-70); text("El pequeño acepto y  en cuanto su barriga se lleno pusieron en marcha el\nplan del pequeño raton",5,350);}
  if(t >= 1 && t < 2 ){image(flujoBA[1],0,0,width,height-70);text("Después de estar buscando por el bosque, y preguntándole a todos, el\npatito que resulto ser  un cisne.",5,350);}
  if(t >= 2 && t < 3 ){image(flujoBA[2],0,0,width,height-70);text("Encontró a su verdadera familia ",5,350);}
  if(t >= 3){image(flujoBA[3],0,0,width,height-70);text("Agradeció la ayuda del ratoncito y finalmente se fue con su verdadera\nfamilia......... FIN.",5,350);}if(t >= 4){creditos=true;t= 0;flujo[12] = false;}
  }//FIN DEL FLUJO BA//FINAL
  if(flujo [13]){//FLUJO BC
  if(t >= 0 && t < 1 ){image(flujoBC[0],0,0,width,height-70);text("Aun que el pequeño quería encontrar a su verdadera familia,no acepto por\nque temia que no lo aceptara como su primera familia.",5,350);}
  if(t >= 1 && t < 2 ){image(flujoBC[1],0,0,width,height-70);text("Ambos tomaron la decisión de que ninguno se separaría del otro, serian\nambos su propia familia.",5,350);}
  if(t >= 2){image(flujoBC[2],0,0,width,height-70);text("Creció acompañado de su amigo el raton, tranquilo con su nueva familia......\nFIN",5,350);}
  }//FIN DEL FLUJO BC//FINAL
  if(flujo[9]){//FLUJO A
  if(t >= 0 && t < 1 ){image(flujoA[10],0,0,width,height-70);text("Ya con su barriga llena el pequeño pato siguió caminando, hasta llegar\na un lago.",5,350);}
  if(t >= 1){image(flujoA[11],0,0,width,height-70);text ("Alli escucho un ruido tan familiar, era el mismo que el emitida cuando\nhablaba.",5,350); t=1;
  if(conflicto(width/2-200,height/2)){flujo [14] = true;t=0;flujo[9] = false;}fill(255);text("Alejarse.",width/2-240,height/2+10);//FLUJO B
  if(conflicto(width/2+200,height/2)){flujo [15] = true;t=0;flujo[9] = false;}fill(255);text("Acercarse más.",width/2+140,height/2+10);//FLUJO C
  }}//FIN DEL FLUJO A
  if(flujo [14]){//FLUJO B
  if(t >= 0 && t < 1 ){image(flujoB[4],0,0,width,height-70);text("Tan pronto salió de ahí volvió a sentirse solo y volvió a llorar.",5,350);}
  if(t >= 1 && t < 2 ){image(flujoB[5],0,0,width,height-70);text("Su llanto llamo la atención de mucho, incluso de los que estaban en el\nlago.",5,350);}
  if(t >= 2 && t < 3 ){image(flujoB[6],0,0,width,height-70); text("Por un momento escucho el mismo sonido que el emitía haciéndolo que\nse asuste.",5,350);}
  if(t >= 3){image(flujoB[7],0,0,width,height-70); text("Frente a el había cuatro patitos igual que el y otro aun mas grande.",5,350);}if(t >= 3){flujo[16] = true; t= 0; flujo[14] = false;}
  }//FIN DEL FLUJO B
  
  if(flujo [15]){//FLUJO C
  if(t >= 0 && t < 1 ){image(flujoC[6],0,0,width,height-70); text("Curioso se acerco hasta el lugar donde mas fuerte era el sonido ",5,350);}
  if(t >= 1){image(flujoC[7],0,0,width,height-70); text("Allí se encontró a cuatro patitos igual que el y otro aun mas grande.",5,350);}if(t >= 2){flujo[16] = true; t= 0; flujo[15] = false;}
  }//FIN DEL FLUJO C
  
  if(flujo [16]){//FLUJO A
  if(t >= 0 && t < 1 ){image(flujoA[12],0,0,width,height-70); text("Resulto que el no era un pato, el era un cisne y aquellos que eran\nigual a el, era su verdadera familia.",5,350);}
  }//FIN DEL FLUJO A
  text("T"+t,mouseX,mouseY);
}//FIN DE IF-AVENTURA
  if (creditos){
  background(250);
}//FIN DE IF-CREDITOS 
}//FIN DEL DRAW
void keyPressed() {
  if(aventura){if (keyCode == RIGHT){t=t+1;}else if(keyCode == LEFT){t=t-1;}} if(t <= 0){ t=0;}
  if(keyCode == 'R'){creditos=false; aventura=false; flujo[0]= false;}
}
