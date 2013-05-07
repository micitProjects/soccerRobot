#include <Servo.h>
 
Servo myServo;
int servoPin = 2;
 
void setup() 
{ 
  myServo.attach(servoPin);
  Serial.begin(115200);   // bit/s 
} 
 
void loop() 
{ 
  for (int i=0; i<=180; i=i+1) { 
    myServo.write(i); 
    Serial.println(i);
    delay(150); 
  }
}
