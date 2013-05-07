// footballBotForward.pde - Move forward
// (c) Kimmo Karvinen & Tero Karvinen http://BotBook.com

#include <Servo.h>

int servoRightPin = 2; 
int servoLeftPin  = 3;
Servo servoRight; 
Servo servoLeft;

void moveForward() 
{
  servoLeft.write(180); // full speed in one direction
  servoRight.write(0);  // full speed in the other
}

void stopMoving() 
{
  servoLeft.write(90);
  servoRight.write(90);
}


void setup() 
{
  servoRight.attach(servoRightPin);
  servoLeft.attach(servoLeftPin);
}

void loop() 
{
  moveForward();
  delay(1000);
  stopMoving();
  delay(1000);
}
