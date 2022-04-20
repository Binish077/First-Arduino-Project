const int EnterButton = 12;
const int BackSpaceButton = 11;

void setup(){
   Serial.begin(9600);
   pinMode(EnterButton, INPUT);
   pinMode(EnterButton, INPUT);
} 

void loop(){
   if(digitalRead(EnterButton) == HIGH){
  Serial.println("Enter:");//It doesn't matter what you print. Just have a colon at the end to make it easier to parse the string.
  delay(100);
   }
   if(digitalRead(BackSpaceButton) == HIGH){
  Serial.println("Backspace:");
  delay(100);
   }

}
