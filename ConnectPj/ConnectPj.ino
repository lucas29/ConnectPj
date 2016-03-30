void setup(){
  Serial.begin(9600);
}

  int pressure, pressureOut;

void loop(){
  pressure = analogRead(0);
  //pressureOut = map(pressure, 0, 1023, 0, 255);
  pressureOut = map(pressure, 0, 800, 0, 255); 
  Serial.write(pressureOut);
  delay(100);
}
