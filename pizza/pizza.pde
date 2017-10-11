import ddf.minim.*;   
Minim sound;     //at the top of the sketch
AudioPlayer song;
void setup(){
  size (500,500);
PImage pizzaBox = loadImage("box.jpeg");
 pizzaBox.resize(width, height); 
 background(pizzaBox); 
 fill(222, 218, 107);
 ellipse(250, 250, width, height);
fill(255,0,0);
ellipse(250,250, 450,450);
fill(255,243,3);
ellipse(250,250,400,400);
sound = new Minim(this);    //in the setup method



 
}
void draw(){

PImage pepperoni = loadImage("beef.ppm.gif");
pepperoni.resize(20,20);
image(pepperoni, 250, 250);
if(mousePressed){
  image(pepperoni,mouseX,mouseY);
  song = sound.loadFile("boom.wav");
  song.play();
  
}
}