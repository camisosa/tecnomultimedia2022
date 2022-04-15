void setup() {
  size(500, 500);
}
void draw() {
  background(#796565);
  noStroke();
  //cara
  fill(#ECF038);
  rect(80, 10, 330, 285);
  //lunares
  fill(#BECB08);
  ellipse(110, 40, 40, 20);
  ellipse(110, 190, 20, 70);
  ellipse(110, 90, 40, 20);
  ellipse(360, 40, 80, 20);
  ellipse(250, 30, 60, 20);
  ellipse(400, 230, 20, 90);
  ellipse(150, 200, 40, 20);
  ellipse(110, 270, 40, 20);
  ellipse(340, 200, 80, 20);
  ellipse(380, 80, 20, 40);
  //ojos
  fill(#FFFFFF);
  ellipse(185, 100, 115, 115);
  ellipse(295, 100, 115, 115);
  //iris
  fill(#00D7FF);
  ellipse(185, 100, 50, 50);
  ellipse(295, 100, 50, 50);
  //pupilas
  fill(#000000);
  ellipse(185, 100, 30, 30);
  ellipse(295, 100, 30, 30);
  //dientes
  fill(#FFFFFF);
  quad(185, 210, 185, 260, 230, 260, 230, 225);
  quad(255, 225, 255, 260, 300, 260, 300, 210);
  //boca
  noFill();
  stroke(1);
  arc(240, 150, 200, 150, 0.1, 3);
  //nariz
  noFill();
  arc(250, 170, 50, 30, 2.5, 7);
  //camisa
  fill(#FFFFF0);
  rect(80, 295, 330, 40);
  noStroke();
  //brazos
  fill(#ECF038);
  rect(50, 310, 20, 70);
  rect(420, 310, 20, 70);
  //mangas
  stroke(1);
  fill(#FFFFFF);
  rect(40, 230, 40, 80);
  rect(410, 230, 40, 80);
  //corbata
  stroke(1);
  fill(#FFFFFF);
  triangle(170, 295, 210, 310, 250, 295);
  triangle(250, 295, 290, 310, 330, 295);
  noStroke();
  fill(#FF0000);
  rect(240, 295, 20, 30);
  triangle(240, 325, 250, 330, 260, 325);
  //piernas
  fill(#ECF038);
  rect(190, 375, 30, 80);
  rect(280, 375, 30, 80);
  //pantalones
  stroke(1);
  fill(#B27D0B);
  rect(80, 335, 330, 40);
  noStroke();
  fill(#000000);
  rect(100, 340, 40, 10);
  rect(150, 340, 40, 10);
  rect(200, 340, 40, 10);
  rect(250, 340, 40, 10);
  rect(300, 340, 40, 10);
  rect(350, 340, 40, 10);
  //zapatos
  fill(#000000);
  rect(150, 455, 70, 20);
  rect(280, 455, 70, 20);
}
