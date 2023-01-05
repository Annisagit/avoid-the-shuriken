import processing.sound.*;

SoundFile soundButton;
SoundFile soundClick;
SoundFile backsound;
SoundFile soundMenu; 
SoundFile soundGamePlay;

PImage BgHome;
PImage BgMenu;
PFont namagame;

//Inisialisasi
int panels = 0;
void setup(){
  size(1000, 1000);
  soundButton = new SoundFile(this, "sound_button.mp3"); 
  soundMenu = new SoundFile(this, "sound_menu.mp3");
  soundGamePlay = new SoundFile(this, "sound_gameplay.mp3");
  BgHome = loadImage("BgHome.jpg");
  BgMenu = loadImage("backgrounmenufix.png");
  namagame = loadFont("Algerian-48.vlw");
  textFont(namagame);
}
void draw(){
   image(BgMenu, 0, 0); 
   
   switch(panels){
     case 0: home(); break;
     case 1: menu(); break;
     case 2: play(); break;
     case 3: options(); break;
     case 4: credits(); break;
     case 5: quit(); break;
   }
}
   
void home(){
   image(BgMenu, 0, 0); 
   textSize(100);
   fill(255, 255, 200);
   text("Avoid", 550, 200);
   text("The", 600, 320);
   text("Shuriken", 480, 440);
   fill(255);
   rect(607, 605, 200, 60, 20);
   fill(0);
   textSize(50);
   text("Start", 630, 650);
   if(dist(mouseX, mouseY, 690, 600)<30){
      fill(200);
      rect(600, 600, 200, 60, 20);
      textSize(50);
      fill(0);
      text("Start", 625, 645);
         if (mousePressed) {
          soundButton.play();
          fill(255, 255, 200);
          text("Start", 625, 645);
          delay(200);
          panels = 1;
         }
  }
}


void menu(){
  image(BgHome, 0, 0); 
  pushMatrix();
  translate(20, 100);
  textSize(75);
  fill(255, 255, 200);
  text("______________", 365, 50);
  text("________", 480, 130);
  text("M.E.N.U", 500, 200);
  text("________", 480, 200);
  
  fill(150);
  rect(480, 250, 300, 60, 20);
  fill(255);
  textSize(50);
  text("PLAY", 560, 300);
   if(dist(mouseX, mouseY, 650, 400)<30){
      fill(255, 255, 200);
      triangle(400, 280, 370, 295, 370, 265);
      fill(200);
      rect(430, 250, 400, 60, 20);
      textSize(50);
      fill(0);
      text("PLAY", 560, 300);
         if (mousePressed) {
          soundButton.play();
          fill(255, 255, 200);
          text("PLAY", 560, 300);
          delay(200);
          panels = 2;
         }
  }
  
  fill(150);
  rect(480, 350, 300, 60, 20);
  fill(255);
  textSize(50);
  text("OPTIONS", 530, 400);
   if(dist(mouseX, mouseY, 650, 500)<30){
      fill(255, 255, 200);
      triangle(400, 380, 370, 395, 370, 365);
      fill(200);
      rect(430, 350, 400, 60, 20);
      textSize(50);
      fill(0);
      text("OPTIONS", 530, 400);
         if (mousePressed) {
          soundButton.play();
          fill(255, 255, 200);
          text("OPTIONS", 530, 400);
          delay(200);
          panels = 3;
         }
  }
  
  fill(150);
  rect(480, 450, 300, 60, 20);
  fill(255);
  textSize(50);
  text("credits", 530, 500);
   if(dist(mouseX, mouseY, 650, 600)<30){
      fill(255, 255, 200);
      triangle(400, 480, 370, 495, 370, 465);
      fill(200);
      rect(430, 450, 400, 60, 20);
      textSize(50);
      fill(0);
      text("credits", 530, 500);
         if (mousePressed) {
          soundButton.play();
          fill(255, 255, 200);
          text("credits", 530, 500);
          delay(200);
          panels = 4;
         }
  }
  
  fill(150);
  rect(480, 550, 300, 60, 20);
  fill(255);
  textSize(50);
  text("QUIT", 570, 600);
   if(dist(mouseX, mouseY, 650, 700)<30){
      fill(255, 255, 200);
      triangle(400, 580, 370, 595, 370, 565);
      fill(200);
      rect(430, 550, 400, 60, 20);
      textSize(50);
      fill(0);
      text("QUIT", 570, 600);
         if (mousePressed) {
          soundButton.play();
          fill(255, 255, 200);
          text("QUIT", 570, 600);
          delay(200);
          panels = 5;
         }
  }
  textSize(75);
  fill(255, 255, 200);
  text("______________", 365, 650);
  popMatrix();
  
}

void play() {

}

void options() {
  image(BgHome, 0, 0); 
  pushMatrix();
  translate(20, 100);
  textSize(75);
  fill(255, 255, 200);
  text("______________", 365, 50);
  text("____________", 400, 130);
  text("O.P.T.I.O.N", 440, 200);
  text("____________", 400, 200);
  
  fill(255);
  textSize(50);
  text("SOUND", 400, 300);
  circle(700, 280, 40);
   if(dist(mouseX, mouseY, 650, 400)<30){
      fill(255, 255, 200);
      triangle(400, 280, 370, 295, 370, 265);
      fill(200);
      rect(430, 250, 400, 60, 20);
      textSize(50);
      fill(0);
      text("PLAY", 560, 300);
         if (mousePressed) {
          soundButton.play();
          soundButton.play();
          fill(255, 255, 200);
          text("PLAY", 560, 300);
          panels = 2;
         }
  }
  
  fill(150);
  rect(480, 350, 300, 60, 20);
  fill(255);
  textSize(50);
  text("OPTIONS", 530, 400);
   if(dist(mouseX, mouseY, 650, 500)<30){
      fill(255, 255, 200);
      triangle(400, 380, 370, 395, 370, 365);
      fill(200);
      rect(430, 350, 400, 60, 20);
      textSize(50);
      fill(0);
      text("OPTIONS", 530, 400);
         if (mousePressed) {
          fill(255, 255, 200);
          text("OPTIONS", 530, 400);
          soundButton.play();
          delay(200);
          panels = 3;
         }
  }
  
  fill(150);
  rect(480, 450, 300, 60, 20);
  fill(255);
  textSize(50);
  text("credits", 530, 500);
   if(dist(mouseX, mouseY, 650, 600)<30){
      fill(255, 255, 200);
      triangle(400, 480, 370, 495, 370, 465);
      fill(200);
      rect(430, 450, 400, 60, 20);
      textSize(50);
      fill(0);
      text("credits", 530, 500);
         if (mousePressed) {
          fill(255, 255, 200);
          text("credits", 530, 500);
          soundButton.play();
          delay(200);
          panels = 4;
         }
  }
  
  fill(150);
  rect(480, 550, 300, 60, 20);
  fill(255);
  textSize(50);
  text("QUIT", 570, 600);
   if(dist(mouseX, mouseY, 650, 700)<30){
      fill(255, 255, 200);
      triangle(400, 580, 370, 595, 370, 565);
      fill(200);
      rect(430, 550, 400, 60, 20);
      textSize(50);
      fill(0);
      text("QUIT", 570, 600);
         if (mousePressed) {
          fill(255, 255, 200);
          text("QUIT", 570, 600);
          soundButton.play();
          delay(200);
          panels = 5;
         }
  }
  textSize(75);
  fill(255, 255, 200);
  text("______________", 365, 650);
  popMatrix();
}

void credits(){
  background(0);
    pushMatrix();
    fill(255);
    textSize(30);
    text("PROJECT UAS GRAFIKA KOMPUTER", 250, 130);
    text("DOSEN PENGAMPU   : ANGGI MARDIYONO", 220, 200);
    text("KELAS", 385, 260);
    text("TI 3A", 500, 260);
    text("KELOMPOK 1", 390, 340);
    text("MICHAEL NATANAEL", 200, 400);
    text("2107411002", 630, 400);
    text("MARWAH NUR SHAFIRA", 200, 450);
    text("2107411008", 630, 450);
    text("ANNISA MARFADILLA", 200, 500);
    text("2107411019", 630, 500);
    text("TEKNIK INFORMATIKA DAN KOMPUTER ", 230, 600);
    text("POLITEKNIK NEGERI JAKARTA", 285, 660);
    text("2022/2023", 430, 720);
    popMatrix();
    
    pushMatrix();
    fill(224,224,224);
    text("BACK", 30, 830);
    popMatrix();
    
    if(dist(mouseX, mouseY, 30, 820) < 10 ||
       dist(mouseX, mouseY, 40, 820) < 10 ||
       dist(mouseX, mouseY, 50, 820) < 10 ||
       dist(mouseX, mouseY, 60, 820) < 10 ||
       dist(mouseX, mouseY, 70, 820) < 10 ||
       dist(mouseX, mouseY, 80, 820) < 10 ||
       dist(mouseX, mouseY, 90, 820) < 10 ||
       dist(mouseX, mouseY, 100, 820) < 10 ||
       dist(mouseX, mouseY, 120, 820) < 10) {
        
      pushMatrix();
      fill(102, 178, 255);
      text("BACK", 30, 830);
      popMatrix();
      if (mousePressed) {
      soundButton.play();
      delay(200);
      panels = 1;
      }
    }
}

void quit(){
    pushMatrix();
    fill(224,224,224);
    text("ARE YOU SURE?", 420, 230);
    text("______________", 420, 250);
    text("YES...", 740, 390);
    text("NO!", 750, 480);
    popMatrix();
  
    if (dist(mouseX, mouseY, 740, 380) < 10 ||
        dist(mouseX, mouseY, 750, 380) < 10 ||
        dist(mouseX, mouseY, 760, 380) < 10 ||
        dist(mouseX, mouseY, 770, 380) < 10 ||
        dist(mouseX, mouseY, 780, 380) < 10 ||
        dist(mouseX, mouseY, 790, 380) < 10 ||
        dist(mouseX, mouseY, 800, 380) < 10 ||
        dist(mouseX, mouseY, 810, 380) < 10 ||
        dist(mouseX, mouseY, 820, 380) < 10 ||
        dist(mouseX, mouseY, 830, 380) < 10) {
          
      pushMatrix();
      fill(102, 178, 255);
      text("YES...", 740, 390);
      popMatrix();
      if (mousePressed) {
        soundButton.play();
        delay(200);
        exit();
      }
    }
    
    if (dist(mouseX, mouseY, 750, 470) < 10 ||
        dist(mouseX, mouseY, 760, 470) < 10 ||
        dist(mouseX, mouseY, 770, 470) < 10 ||
        dist(mouseX, mouseY, 780, 470) < 10 ||
        dist(mouseX, mouseY, 790, 470) < 10 ||
        dist(mouseX, mouseY, 800, 470) < 10) {
      
      pushMatrix();
      fill(102, 178, 255);
      text("NO!", 750, 480);
      popMatrix();
      if (mousePressed) {
        soundButton.play();
        delay(200);
        panels = 0;
      }
    }
  }
  

   
