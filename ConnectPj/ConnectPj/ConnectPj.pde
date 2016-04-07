import processing.serial.*;

Serial myPort;

int x;
int timer = 0;

void setup(){
  size(800, 500);
  background(255);
  rect(50, 50, 700, 400);
  frameRate(1000);
  myPort = new Serial(this, "COM5", 9600);
}

void draw(){
  //background(255);
  //if(x>100){
    timer++;
    ellipse((timer/20)+50,1850-10*x,5,5);
  //}
}

void serialEvent(Serial p){
  x = p.read();
  //if(x>0){
    if(x<140){
      x = 140;
    }
    println(x);
  //}
}