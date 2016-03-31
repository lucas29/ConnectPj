void setup(){
  Serial.begin(9600);
}

int pressure, pressureOut;

void loop(){
  pressure = analogRead(0);
  //pressureOut = map(pressure, 0, 1023, 0, 255);
  //pressure = constrain(pressure, 501, 1023);
  pressure = constrain(pressure, 501, 900);
  pressureOut = map(pressure, 500, 900, 0, 255);
  Serial.write(pressureOut);
  delay(1);
}
