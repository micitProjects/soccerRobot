// fullRotation.pde - Turn continuous rotation servo clockwise, 
// counterclockwise and stop. 
// (c) Kimmo Karvinen & Tero Karvinen http://BotBook.com

#include <Servo.h> 

Servo myServo; 
int servoPin = 2;

void servoClockWise()
{
    myServo.write(85);
    delay(1000);
}

void servoCounterClockWise()
{
    myServo.write(95);
    delay(1000);
}


void servoStop()
{
    myServo.write(90);
    delay(1000);
}

void setup()
{
  myServo.attach(servoPin);
}

void loop()
{
  servoClockWise();
  servoStop();
  servoCounterClockWise();
  servoStop();
}
