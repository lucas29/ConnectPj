// Import Serial Library
import processing.serial.*;

// myPort（任意名）というインスタンスを用意
Serial myPort;

int x; //図形のX座標の変数を用意

void setup(){
  // 画面サイズ
  size(256, 256);

  // シリアルポートの設定
  // "/dev/tty.usbmodem1411" の部分を前述の「シリアルポートを選択する」で選択したシリアルポートにあわせて書き換える
  myPort = new Serial(this, "/dev/tty.usbmodem1411", 9600);
}

void draw(){
  // 背景色を白に設定
  background(255);

  // XY座標を(x,100)に設定し、
  // 幅50、高さ50の円を描画
  ellipse(x,100,50,50);
}

void serialEvent(Serial p){
  //変数xにシリアル通信で読み込んだ値を代入
  x = p.read();
  println(x);
}
