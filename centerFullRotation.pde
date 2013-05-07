// centerFullRotation.pde &#8211; Halt a continuous rotation servo 
// (c) Kimmo Karvinen & Tero Karvinen http://BotBook.com

#include <Servo.h>
 
Servo myServo;
int servoPin = 2;
 
void setup() 
{ 
  myServo.attach(servoPin);
} 
 
void loop() 
{ 
  myServo.write(90);
  delay(20);
} 
