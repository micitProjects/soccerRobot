/*
 * BlinkOnCommand - turns an LED on or off
 */

int ledPin = 13;

void setup() {
  Serial.begin(115200);    // Open a connection to the Bluetooth Mate
  pinMode(ledPin, OUTPUT); // Activate the LED
}

void loop() {
  
  // Look for data coming in from the Bluetooth Mate
  if (Serial.available() > 0) {
    char cmd = Serial.read(); // Read the character
    Serial.print(cmd);        // Echo the character back
    
    // '1' turns on the LED, '0' turns it off
    if (cmd == '1') {
      digitalWrite(ledPin, HIGH);
    } else if (cmd == '0') {
      digitalWrite(ledPin, LOW);
    }
  }
  delay(20);
}
