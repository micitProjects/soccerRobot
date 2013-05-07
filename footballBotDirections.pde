// footballBotDirections.pde - Move forward, backward, turn right and left.
// (c) Kimmo Karvinen & Tero Karvinen http://BotBook.com

#include <Servo.h>

int servoRightPin = 2;
int servoLeftPin  = 3;
Servo servoRight;
Servo servoLeft;

void moveForward()
{
  servoLeft.write(180);
  servoRight.write(0);
}

void moveBack() 
{
  servoLeft.write(0);
  servoRight.write(180);
}

void turnRight() 
{
  servoLeft.write(180);
  servoRight.write(180);
} 

void turnLeft() 
{
  servoLeft.write(0);
  servoRight.write(0);
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
    
    moveBack();
    delay(1000);
    stopMoving();
    delay(1000);

    turnRight();
    delay(1000);
    stopMoving();
    delay(1000);

    turnLeft();
    delay(1000);
    stopMoving();
    delay(1000);
}
