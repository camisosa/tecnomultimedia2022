int grados=-1;
int grado=1;
int cant=20;
int borde=13;
void setup(){
  size(400,400); 
}
void draw(){
 background(250);
 translate(200,200);
 rotate(radians(grado));
 rectMode(CENTER);
   for(int j=cant; j>3; j--){
     noFill();
     stroke(0);
     strokeWeight(borde);
     stroke(0);
     rect(0,0,j*35,j*35);
     rotate(radians(grados*j));
   }
if(keyCode == DOWN ){
  cant--;
  if ( cant <= 0){
    cant=0;}
  
}else if (keyCode == UP){
  cant++;
  if(cant >=20){cant=20;}
}

}
 void mouseDragged(){
   grado=grado+1;
   borde= round(map(mouseY,0,height,5,15));
}
void mouseClicked(){
  grado=1;
  cant=20;
  borde=13;
}
