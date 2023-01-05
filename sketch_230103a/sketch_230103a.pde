PImage BgHome;
void setup(){
  size(1000, 1000);
  BgHome = loadImage("BgHome.jpg");
}

void draw(){
   image(BgHome, 0, 0); 
}
