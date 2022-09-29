class SistemaSolar {
  PImage estrellaSolar;
  float [] f = new float [9];
  Satelite luna, satelite;
  Planeta mercurio, venus, tierra, marte, jupiter, saturno, urano, neptuno;
  int posX, posY;
  SistemaSolar() {
    estrellaSolar = loadImage ("sol.png");
    luna = new Satelite("luna.png", 20, 20, 10, 10);
    satelite = new Satelite("satelite.png", 20, 30, 10, 10);
    mercurio = new Planeta("mercurio.png", 90, 20, 20);
    venus = new Planeta("venus.png", 135, 25, 25);
    tierra = new Planeta("tierra.png", 180, 40, 40);
    marte = new Planeta("marte.png", 225, 30, 30);
    jupiter = new Planeta("jupiter.png", 270, 80, 80);
    saturno = new Planeta("saturno.png", 315, 150, 150);
    urano = new Planeta("urano.png", 360, 50, 50);
    neptuno = new Planeta("neptuno.png", 405, 60, 60);
  }

  void dibujar() {
    imageMode(CENTER);
    image(estrellaSolar, width/2, height/2, 150, 150);
    
    pushMatrix();
      translate(width/2, height/2);

      pushMatrix();
      rotate(f[0]);
      f[0]=f[0]+0.008;
      mercurio.dibujar();
      popMatrix();
  
      pushMatrix();
      rotate(f[1]);
      f[1]=f[1]+0.007;
      venus.dibujar();
      popMatrix();
  
      pushMatrix();
      rotate(f[2]);
      f[2]=f[2]+0.006;
      tierra.dibujar();
      
        pushMatrix();
        translate(180, 0);
        rotate(f[1]);
        luna.dibujar();
        satelite.dibujar();
        popMatrix();
        
      popMatrix();
  
      pushMatrix();
      rotate(f[3]);
      f[3]=f[3]+0.005;
      marte.dibujar();
      popMatrix();
  
      pushMatrix();
      rotate(f[4]);
      f[4]=f[4]+0.004;
      jupiter.dibujar();
      popMatrix();
  
      pushMatrix();
      rotate(f[5]);
      f[5]=f[5]+0.003;
      saturno.dibujar();
      popMatrix();
  
      pushMatrix();
      rotate(f[6]);
      f[6]=f[6]+0.002;
      urano.dibujar();
      popMatrix();
  
      pushMatrix();
      rotate(f[7]);
      f[7]=f[7]+0.001;
      neptuno.dibujar();
      popMatrix();

    popMatrix();
  }
}
