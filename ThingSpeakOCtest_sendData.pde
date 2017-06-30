int xCord=77;
int yCord=77;
int radius=5;
String APIKey="NIGHWHCI0ACGAZGO";
String myString;
void setup()
{
  background(#1C6EC4);
  size(600,600);
}
void draw()
{
  
  //from CIF IoT
  //https://api.thingspeak.com/update?api_key=NIGHWHCI0ACGAZGO&field1=100&field2=100
  
  myString="http://api.thingspeak.com/update?api_key="+APIKey+"&field1="+xCord+"&field2="+yCord;
  
  if(keyPressed==true)
  {
    ellipse(mouseX, mouseY,radius, radius);
    xCord=mouseX;
    yCord=mouseY;
    loadStrings(myString);
  radius=radius+3;
  delay(1000);
  }
 
}