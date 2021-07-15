int grados=1;
int estado;
int grado=1;
int c=10;
void setup(){
  size(400,400); 
}
void draw(){
 background(250);
 noFill();
 stroke(0);
 strokeWeight(10);
 translate(200,200);
 rectMode(CENTER);
 if(estado == 0){
   for(int j=0; j<width; j++){
     rect(0,0,j*40,j*40);
     rotate(radians(grados*j));
   }
 }else if(estado ==1){
   rotate(radians(grado++));
   for(int j=1; j<width; j++){
     rect(0,0,j*40,j*40);
     rotate(radians(grados*j));
   }
 } else if(estado ==2){
   rotate(radians(grado++));
   background(0);
   stroke(250);
   for(int j=1; j<width; j++){
     rect(0,0,j*40,j*40);
     rotate(radians(grados*j)); 
   }
 }else if(estado == 3){
   grado=grado+2;
   rotate(radians(grado++));
   background(random(250),random(250),random(250));
   strokeWeight(map(mouseY,0,height,0,20));
   stroke(random(50));
   for(int j=1; j<width; j++){     
     rect(0,0,j*40,j*40);
     rotate(radians(grados*j));
   }
 }else if (estado == 4){
   estado = 0;
 }
}
void mouseClicked(){
estado++;
}
