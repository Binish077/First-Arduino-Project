import processing.serial.*;
import java.awt.AWTException;
import java.awt.Robot;
import java.awt.event.InputEvent;
import java.awt.event.KeyEvent;
import javax.swing.KeyStroke;
Serial MyPort;                                
String KeyString = "";
void setup()
{
  System.out.println("Hello, welcome to this Arduino project!");
  size(700, 500);
  MyPort = new Serial(this, "COM7", 9600);
  MyPort.bufferUntil('\n');
}
void draw(){//Not really necessary
  background(0, 0, 0);
  fill(255, 0, 0);
  text("Press the enter or backspace key", 100, 175);
}
void serialEvent(Serial MyPort)throws Exception {
   KeyString = MyPort.readStringUntil('\n');
   KeyString = KeyString.substring(0, KeyString.indexOf(':'));//The string is split. the whole string leaving the colon is taken
   System.out.println(KeyString);//prints the serial string for debugging purpose
   Robot Arduino = new Robot();//Constructor of robot class
   switch(KeyString){
     case "Enter" :
       Arduino.keyPress(KeyEvent.VK_ENTER);//presses up key.
       Arduino.keyRelease(KeyEvent.VK_ENTER);//releases up key
       break;
     case "Backspace" :
       Arduino.keyPress(KeyEvent.VK_BACK_SPACE);
       Arduino.keyRelease(KeyEvent.VK_BACK_SPACE);      
       break;
   }
   
}
