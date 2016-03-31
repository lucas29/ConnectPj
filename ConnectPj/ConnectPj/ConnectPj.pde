// Import Serial Library
import processing.serial.*;

// create instance named myPort
Serial myPort;

int x;
int timer = 0;

void setup(){
  // 画面サイズ
  size(256, 256);
  background(255);
  frameRate(30);
  myPort = new Serial(this, "/dev/cu.usbmodem1451", 9600);
}

void draw(){
  if(x>10){
    timer++;
    ellipse(timer, 255-x, 5,5);
  }
}

void serialEvent(Serial p){
  //変数xにシリアル通信で読み込んだ値を代入
  x = p.read();
  println(x);
}
