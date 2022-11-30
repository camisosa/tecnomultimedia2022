import processing.sound.*;
SoundFile moveAliens, deaAliens, disparoSong, deadNave, winSong, songMenu;
Menu menu;
void setup() {
  size(500, 600);
  menu = new Menu();
  moveAliens = new SoundFile(this, "moveAliens.mp3"); 
  deaAliens  = new SoundFile(this, "deadAliens.mp3");
  deadNave = new SoundFile(this, "deadNave.mp3");
  winSong  = new SoundFile(this, "win.mp3");
  songMenu = new SoundFile(this, "songMenu.mp3");
  disparoSong = new SoundFile(this, "disparo.mp3");
}
void draw() {
  menu.dibujar();
}
void keyPressed() {
  menu.teclaPresionada();
}
void mousePressed() {  
  menu.hiceClick();
}
