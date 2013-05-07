/ footballBotKick.pde - Kick
// (c) Kimmo Karvinen & Tero Karvinen http://BotBook.com

#include <Servo.h>

int servoKickPin = 4; 
Servo kickerServo;

int kickerNeutral = 130; 
int kickerKick    = 10; 
long kickerWait   = 750; 

void kick() 
{
  kickerServo.write(kickerKick);
  delay(kickerWait);
  kickerServo.write(kickerNeutral);
}

void setup() 
{
  kickerServo.attach(servoKickPin);
  kickerServo.write(kickerNeutral);
}
 
void loop() 
{
    kick();
    delay(5000);
}
