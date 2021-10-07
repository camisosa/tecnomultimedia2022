boolean boton(int posX, int posY){
  int ancho = 150;
  int alto =  150;
  boolean hiceClick = false;
  noStroke();   
  fill(#1BF000,100);
  if(mouseX > posX && mouseX < posX+ancho && mouseY > posY && mouseY < posY+alto){rect(posX,posY,ancho,alto);if(mousePressed){hiceClick = true;}
  }
  return hiceClick;
}
boolean conflicto(int x, int y){
  float distancia;
  int diametro = 150;
  boolean elegi = false;
  distancia= round(dist(x,y,mouseX, mouseY));
  noFill();
  stroke(10);
  ellipse(x,y,diametro,diametro);
  if (distancia < 75){fill (#F0CB0F,150);ellipse(x,y,diametro,diametro);if(mousePressed){elegi = true;}}
  return elegi;
}
