// footballBotSerialControl.pde - Call move functions from serial console.
// (c) Kimmo Karvinen & Tero Karvinen http://BotBook.com

#include <Servo.h>
int servoRightPin = 2;
int servoLeftPin  = 3;
int servoKickPin = 4;

Servo kickerServo;
Servo servoRight;
Servo servoLeft;

int kickerNeutral = 130;
int kickerKick    = 10;
long kickerWait   = 750;

void kick()
{
  kickerServo.write(kickerKick);
  delay(kickerWait);
  kickerServo.write(kickerNeutral);
}

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

  kickerServo.attach(servoKickPin);
  kickerServo.write(kickerNeutral);
  
  stopMoving();

  Serial.begin(115200); 
  Serial.println("Football robot. (c) 2008 Karvinen ");
}

void loop()
{
  if ( Serial.available() ) { 
    char ch = Serial.read(); 

    switch (ch) {
    case '8': 
      moveForward();
      delay(250);
      stopMoving();
      break;
    case '2':
      moveBack();
      delay(250);
      stopMoving();
      break;
    case '6':
      turnRight();
      delay(250);
      stopMoving();
      break;
    case '4':
      turnLeft();
      delay(250);
      stopMoving();
      break;
    case '5':
      kick();
      break;  
    }
  }
}
