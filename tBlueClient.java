// tBlueClient.java - read from serial port over Bluetooth
// (c) Tero Karvinen & Kimmo Karvinen http://BotBook.com
 
package fi.sulautetut.android.tblueclient;
 
import android.app.Activity;
import android.os.Bundle;
import android.widget.LinearLayout;
import android.widget.TextView;
 
 
public class TBlueClient extends Activity {
    TBlue tBlue;
    TextView messagesTv; 
 
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        initGUI();
    }
 
    @Override
    public void onResume() 1
    {
        super.onResume();
        tBlue=new TBlue("00:07:80:83:AB:6A"); // You must change this! 2
        if (tBlue.streaming()) {
            messagesTv.append("Connected succesfully! ");
        } else {
            messagesTv.append("Error: Failed to connect. ");
        } 
        String s="";
        while (tBlue.streaming() && (s.length()<10) ) { 3
            s+=tBlue.read(); 4
        }
        messagesTv.append("Read from Bluetooth: \n"+s);
    }
 
    @Override
    public void onPause()
    {
        super.onPause();
        tBlue.close(); 5
    } 
 
    public void initGUI()
    {
        LinearLayout container=new LinearLayout(this);
        messagesTv = new TextView(this);
        container.addView(messagesTv);
        setContentView(container); 
    }
}
