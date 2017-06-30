/**
 * HTTP Client. 
 * 
 * Starts a network client that connects to a server on port 80,
 * sends an HTTP 1.0 GET request, and prints the results. 
 *
 * Note that this code is not necessary for simple HTTP GET request:
 * Simply calling loadStrings("http://www.processing.org") would do
 * the same thing as (and more efficiently than) this example.
 * This example is for people who might want to do something more 
 * complicated later.
 */
 

import processing.net.*;

String APIkey="277951";
String[] data;
int[] subData;
void setup() {
  size(1000, 400);
  background(50);
  fill(200);
  
}

void draw() {
  background(50);
  //example feed= https://api.thingspeak.com/channels/277951/fields/2/last.txt
 String lines[]= loadStrings("https://api.thingspeak.com/channels/"+APIkey+"/fields/2/last.txt");
 data=lines;

 subData =int (split(data[0],"."));
 textSize(50);
 text(subData[0],0,200);
 text(",",100,200);
 text(subData[1],130,200);
  println(data[0]);
    
  }