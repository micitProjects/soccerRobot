/*
This sketch uses a photoresistor to control a RGB led when detect less light than the limit (It is based to the 0...1024 from the analog reading).
*/
    //Description of the RGB led pins. Please add 330 resistors to each RGB pin and remember to connect the ground pin.
    int redPin = 9;
    int greenPin = 10;
    int bluePin = 11;

//Connect one resistor of 10K from ground to the A0 pin.
//Connect the photoresistor from the A0 pin to 5V.
    int photoPin = A0;

    int limit = 800; //You can use the serial readings to change this numbers.
    
     
    void setup()
    {
//      Serial.begin(9600); //Testing purposes. Uncomment to start the serial transmision.
      pinMode(redPin, OUTPUT);
      pinMode(greenPin, OUTPUT);
      pinMode(bluePin, OUTPUT);
      pinMode(photoPin, INPUT);
    }
     
    void loop()
    {
      int on = 1; // This is for testing purposes. When it is 0 don't turn on the led.
      
      int roomLight = analogRead(photoPin);
//      Serial.println(roomLight); //Testing purposes. We can send the value to the computer. Turn on the serial monitor.

      if (roomLight < limit){
        if (on) {
          setColor(255, 255, 255); //white
          delay(1000);
          setColor(255, 0, 0); // red
          delay(1000);
          setColor(0, 255, 0); // green
          delay(1000);
          setColor(0, 0, 255); // blue
          delay(1000);
          setColor(255, 255, 0); // yellow
          delay(1000);
          setColor(80, 0, 80); // purple
          delay(1000);
          setColor(0, 255, 255); // aqua
          delay(1000);
          setColor(0, 0, 0); //OFF
          //delay(1000);
        }
      }
      delay(1000);
    }
     
    void setColor(int red, int green, int blue)
    {
    analogWrite(redPin, red);
    analogWrite(greenPin, green);
    analogWrite(bluePin, blue);
    }
