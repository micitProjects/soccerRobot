// serialSample.pde - test serial port over Bluetooth
// (c) Tero Karvinen & Kimmo Karvinen http://BotBook.com
 
int ledPin =  13;
 
void setup()
{
  pinMode(ledPin, OUTPUT);
  Serial.begin(115200); // bits per second
}
 
void loop()
{
  digitalWrite(ledPin, HIGH);
  Serial.println("Hello Serial (over Bluetooth)!");
  delay(500);
  digitalWrite(ledPin, LOW);
  delay(500);
}
