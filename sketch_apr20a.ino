const int UpButton = 12;
const int DownButton = 11;

void setup(){
   Serial.begin(9600);
   pinMode(UpButton, INPUT);
   pinMode(UpButton, INPUT);
} 

void loop(){
   if(digitalRead(UpButton) == HIGH){
  Serial.println("Enter:");//It doesn't matter what you print. Just have a colon at the end to make it easier to parse the string.
  delay(100);
   }
   if(digitalRead(DownButton) == HIGH){
  Serial.println("Backspace:");
  delay(100);
   }

}
