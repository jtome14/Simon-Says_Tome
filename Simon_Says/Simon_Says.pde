#include <MeggyJrSimple.h>    // Required code, line 1 of 2.

struct Point 
{
  int x;
  int y;
};


void setup()                    // run once, when the sketch starts
{
  MeggyJrSimpleSetup();      // Required code, line 2 of 2.
}

void lightGreen() //lights green and plays tone, up
{
  DrawPx(4,5,Green);
  DrawPx(4,6,Green);
  DrawPx(4,7,Green);
  DrawPx(3,5,Green);
  DrawPx(3,6,Green);
  DrawPx(3,7,Green);
  DrawPx(2,6,Green);
  DrawPx(2,7,Green);
  DrawPx(1,7,Green);
  DrawPx(5,6,Green);
  DrawPx(5,7,Green);
  DrawPx(6,7,Green);
  Tone_Start(ToneF5, 200);
  DisplaySlate();
}

void lightRed() //lights red and plays tone, right
{
  DrawPx(6,4,Red);  
  DrawPx(6,3,Red);
  DrawPx(5,4,Red);
  DrawPx(5,3,Red);
  DrawPx(7,2,Red);
  DrawPx(7,3,Red);
  DrawPx(7,4,Red);
  DrawPx(7,5,Red);
  DrawPx(7,6,Red);
  DrawPx(6,2,Red);
  DrawPx(6,5,Red);
  DrawPx(7,1,Red);
  Tone_Start(ToneC5, 200);
  DisplaySlate();
}

void lightYellow()  //lights yellow and plays tone, left
{
  DrawPx(0,4,Yellow);
  DrawPx(0,3,Yellow);
  DrawPx(0,2,Yellow);
  DrawPx(0,1,Yellow);
  DrawPx(0,5,Yellow);
  DrawPx(0,6,Yellow);
  DrawPx(1,2,Yellow);
  DrawPx(1,5,Yellow);
  DrawPx(1,4,Yellow);  
  DrawPx(1,3,Yellow);
  DrawPx(2,4,Yellow);
  DrawPx(2,3,Yellow);
  Tone_Start(ToneD5, 200);
  DisplaySlate();
}

void lightBlue()
{
  DrawPx(3,2,Blue);
  DrawPx(3,1,Blue);
  DrawPx(3,0,Blue);
  DrawPx(2,1,Blue);
  DrawPx(1,0,Blue);
  DrawPx(4,2,Blue);
  DrawPx(4,1,Blue);
  DrawPx(4,0,Blue);
  DrawPx(5,1,Blue);
  DrawPx(5,0,Blue);
  DrawPx(6,0,Blue);
  DrawPx(2,0,Blue);
  Tone_Start(ToneE5, 200);
  DisplaySlate();
}

  

void loop()                     // run over and over again
{
  
  DrawPx(3,4,Yellow);           // Draw a dot at x=3, y=4, in yellow.
  DisplaySlate();                  // Write the drawing to the screen.
  delay(1000);                  // waits for a second
  
  ClearSlate();                 // Erase drawing
  DisplaySlate();                  // Write the (now empty) drawing to the screen.
   
  delay(1000);                  // waits for a second
}
