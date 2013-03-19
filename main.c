//This is the code from the magazine as a start

#include <Servo.h>
#define DELAY 1000
#define CLOCKWISE 85
#define COUNTERCLOCK 95
#define STOP 90

Servo myServo;
int servoPin;

void servoClockWise()
{
   myServo.write(CLOCKWISE);
   delay(DELAY);
}

void servoCoutnerClockWise()
{
   myServo.write(COUNTERCLOCK);
   delay(DELAY);
}
void servoStop()
{
   myServo.write(STOP);
   delay(DELAY);
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

