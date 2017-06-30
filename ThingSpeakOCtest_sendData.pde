int xCord=77;
int yCord=77;
int radius=5;
String APIKey="NIGHWHCI0ACGAZGO";
String myString;
void setup()
{
  background(#1C6EC4);
  size(600, 600);
}
void draw()
{



  myString="http://api.thingspeak.com/update?api_key="+APIKey+"&field1="+xCord;

  if (keyPressed==true)
  {
    rect(20, 200, mouseX, 200);
    xCord=mouseX;
    loadStrings(myString);
    delay(1000);
    println(xCord);
  }
}

