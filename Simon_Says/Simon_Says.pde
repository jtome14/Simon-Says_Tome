#include <MeggyJrSimple.h>    // Required code, line 1 of 2.

struct Point 
{
  int x;
  int y;
};

int direction = 270;

Point a1 = {4,5};
Point a2 = {6,4};
Point a3 = {0,4};
Point a4 = {3,2};

int marker = 4; 

Point arrows[64] = {a1,a2,a3,a4}; 

void setup()                    // run once, when the sketch starts
{
  MeggyJrSimpleSetup();      // Required code, line 2 of 2.
  Serial.begin(9600);
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
/* Check whose turn it is
If it's computer's turn, computerTurn();
else playerTurn();
Computer's Turn:
Generate solution array (4 length)
Go throgh array, if it's a 0, lightGreen(); else if it's a 90, lightBlue(); etc.
Player's turn:
Create an array
Check buttons
if it's Up, lightGreen() and store a 0 in the array. Else if it's 90, lightBlue() and store a 90 in the playerArray
WHen you reach the end of the array, compoare the numbres in the two arrays. If match, then WIN, else computerTurn()
}


CheckButtonsPress();
    if (Button_Up)
  {
    direction = 0;     //add 1 to y value  
  }
  if (Button_Right)
  { 
    direction = 90;    //add 1 to x value
  }
  if (Button_Down)
  {   
     direction = 180;    //subtract 1 from y value
  }
  if (Button_Left)
  {
    direction = 270;    //subtract 1 from x value
  }
  
  

void ArrowUp()
{
  DrawPx(4,5,DimGreen);
  DrawPx(4,6,DimGreen);
  DrawPx(4,7,DimGreen);
  DrawPx(3,5,DimGreen);
  DrawPx(3,6,DimGreen);
  DrawPx(3,7,DimGreen);
  DrawPx(2,6,DimGreen);
  DrawPx(2,7,DimGreen);
  DrawPx(1,7,DimGreen);
  DrawPx(5,6,DimGreen);
  DrawPx(5,7,DimGreen);
  DrawPx(6,7,DimGreen);
}

