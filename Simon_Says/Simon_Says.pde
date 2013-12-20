// Tome Says by Jordan Tome
#include <MeggyJrSimple.h>    // Required code, line 1 of 2.

struct Point 
{
 int x;
 int y;
};

int myArray[4];
boolean playerTurn = false;
boolean computerTurn = false;



void setup()                    // run once, when the sketch starts
{
  MeggyJrSimpleSetup();      // Required code, line 2 of 2.
  Serial.begin(9600);
  showArray();
  startArray();
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
  drawBoard();
  DisplaySlate();
  
  if (computerTurn)
  startArray();
  DisplaySlate();
  delay(200);
  ClearSlate();
  
  if (playerTurn)
  player();
  else showArray();  
  DisplaySlate();
}

void drawBoard()    //displays dim colored board
{
  DrawPx(4,5,DimGreen); //up
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
  
  DrawPx(6,4,DimRed);  //right
  DrawPx(6,3,DimRed);
  DrawPx(5,4,DimRed);
  DrawPx(5,3,DimRed);
  DrawPx(7,2,DimRed);
  DrawPx(7,3,DimRed);
  DrawPx(7,4,DimRed);
  DrawPx(7,5,DimRed);
  DrawPx(7,6,DimRed);
  DrawPx(6,2,DimRed);
  DrawPx(6,5,DimRed);
  DrawPx(7,1,DimRed);
  
  DrawPx(0,4,DimYellow);  //left
  DrawPx(0,3,DimYellow);
  DrawPx(0,2,DimYellow);
  DrawPx(0,1,DimYellow);
  DrawPx(0,5,DimYellow);
  DrawPx(0,6,DimYellow);
  DrawPx(1,2,DimYellow);
  DrawPx(1,5,DimYellow);
  DrawPx(1,4,DimYellow);  
  DrawPx(1,3,DimYellow);
  DrawPx(2,4,DimYellow);
  DrawPx(2,3,DimYellow);
  
  DrawPx(3,2,DimBlue);  //down
  DrawPx(3,1,DimBlue);
  DrawPx(3,0,DimBlue);
  DrawPx(2,1,DimBlue);
  DrawPx(1,0,DimBlue);
  DrawPx(4,2,DimBlue);
  DrawPx(4,1,DimBlue);
  DrawPx(4,0,DimBlue);
  DrawPx(5,1,DimBlue);
  DrawPx(5,0,DimBlue);
  DrawPx(6,0,DimBlue);
  DrawPx(2,0,DimBlue);
  DisplaySlate();
}

  

void player()  //code for player
{
  int marker = 0;
  while (marker < sizeof(myArray))
  {
  CheckButtonsPress();
  if (Button_Up)
  {
    myArray[marker] = 360;
    marker++;
  }
  if (Button_Right)
  { 
    myArray[marker] = 90;    
    marker++;
  }
  if (Button_Down)
  {   
    myArray[marker] = 180;  
    marker++;  
  }
  if (Button_Left)
  {
    myArray[marker] = 270;  
    marker++;  
  }
  }
}
  
 
  void showArray()  //code that compares myArray to startArray
  {
    int marker = 0;
    while (marker < sizeof(myArray))
    {
      if (myArray[marker] == 360)
      {
        lightGreen();
      }
      if (myArray[marker] == 90)
      {
        lightRed();
      }
      if (myArray[marker] == 180)
      {
        lightYellow();
      }
      if (myArray[marker] == 270)
      {
        lightBlue();
      }  
    }
  }
  
  void startArray()  //code for computer
  {
    int marker = 0;
    for (int i = 0; i < marker; i++)
    {
      if (myArray[i] == 360)
        lightGreen();
      if (myArray[i] == 90)
        lightRed();
      if (myArray[i] == 180)
        lightYellow();
      if (myArray[i] == 270)
        lightBlue();
        DisplaySlate();
    }
  }
      
  
    
   
  
 
    
  
  

  

