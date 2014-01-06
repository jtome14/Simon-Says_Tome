// Tome Says by Jordan Tome
#include <MeggyJrSimple.h>    // Required code, line 1 of 2.


byte computerTurn[256], playerTurn[256], i, b, j, score, Light, Number;
boolean correct, repeat, start, cont;


void setup()                    // run once, when the sketch starts
{
  MeggyJrSimpleSetup();      // Required code, line 2 of 2
  correct = false;
  cont = false;
  repeat = false;
  start = true;
  score= 0;
  i = 0;



}

void shineGreen() //lights green 
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
  DisplaySlate();
}

void shineRed() //lights red 
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
  DisplaySlate();
}

void shineYellow()  //lights yellow
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
  DisplaySlate();
}

void shineBlue() //lights blue
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
  DisplaySlate();
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
  delay(200)
  Tone_Update();
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
  delay(200);
  Tone_Update();
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
  delay(200);
  Tone_Update();
}

void lightBlue() //lights blue and plays tone
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
  delay(200);
  Tone_Update();
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

void gameOver()
{ 
  DrawPx(0,0,Red);  //when player makes a mistake, red x
  DrawPx(0,1,Red);
  DrawPx(1,1,Red);
  DrawPx(1,0,Red);
  DrawPx(6,0,Red);
  DrawPx(7,0,Red);
  DrawPx(7,1,Red);
  DrawPx(6,1,Red);
  DrawPx(2,2,Red);
  DrawPx(5,2,Red);
  DrawPx(3,3,Red);
  DrawPx(4,3,Red);
  DrawPx(3,4,Red);
  DrawPx(4,4,Red);
  DrawPx(2,5,Red);
  DrawPx(5,5,Red);
  DrawPx(0,6,Red);
  DrawPx(1,6,Red);
  DrawPx(6,6,Red);
  DrawPx(7,6,Red);
  DrawPx(0,7,Red);
  DrawPx(1,7,Red);
  DrawPx(6,7,Red);
  DrawPx(7,7,Red);
  DisplaySlate();
}

void end()
{
  Tone_Start(43243, 1000); //error tone
  ClearSlate();
  gameOver();
  DisplaySlate();
  delay(1000);
  Tone_Update();
  
  while(!correct && !start)
  {
    shineGreen();
    SetAuxLEDs(0);
    delay(100);
    ClearSlate();
    gameOver();
    shineYellow();
    SetAuxLEDs(score + 1);
    delay(100);
    ClearSlate();
    gameOver();
    shineBlue();
    SetAuxLEDs(0);
    delay(100);
    ClearSlate();
    gameOver();
    shineRed();
    SetAuxLEDs(score + 1);
    delay(100);
    ClearSlate();
    gameOver();
    
    CheckButtonsPress();
    if (Button_A)  //resets game
    {
      ClearSlate();
      DisplaySlate();
      repeat = true;
      score = 0;
      start = true;
    }
  }
}

void loop()                     // run over and over again
{
  while (start)
  {
    if (!repeat)  //Repeat is set to true when game ends.
    {
      randomSeed(millis());
      drawBoard();
      DisplaySlate();
      delay(1000);
      ClearSlate();
      DisplaySlate();
      delay(1000);
      CheckButtonsDown();
    }
    if (Button_A)  //resets game
    {
      Tone_Start(ToneD6, 200);
      delay(200);
      Tone_Update();
      Tone_Start(ToneF6, 200);
      delay(200);
      Tone_Update();
      Tone_Start(ToneG6, 200);
      delay(200);
      Tone_Update();
      
      i = 0;
      
      while (i < 255)  //random color sequence
      {
        Number = random(1,5);
        computerTurn[i] = Number;
        i++;
      }
      
      correct = true;
      cont = true;
      Tone_Update();
      drawBoard();
      DisplaySlate();
      delay(1000);
      SetAuxLEDs(score + 1);
      start = false;
    }
  }  

    
if (cont && correct) // plays back until current round 
{
  b = 0;
  while (b < score + 1)
  {
    delay(150);
    Light = computerTurn[b];
    switch (Light)
    {
        case 1:
        {
        lightYellow();
        delay(100);
        drawBoard();
        b++;
        break;
        }
        
        case 2:
        {
        lightRed();
        delay(100);
        drawBoard();
        b++;
        break;
        }
        
        case 3:
        {
        lightGreen();
        delay(100);
        drawBoard();
        b++;
        break;
        }
        
        case 4:
        {
        lightBlue();
        delay(100);
        drawBoard();
        b++;
        break;
        }
        
      }
      
    Tone_Update();
    cont = false;     
 }
      
    
if (!cont && correct);  //code for player
{
  j = 0;
  while (j < score + 1 && correct)
  {
  CheckButtonsDown();
  
  if (Button_Left)
  {
    lightYellow();
    drawBoard();
    playerTurn[j] = 1;
    
  if (playerTurn[j] == computerTurn[j])
  {
    correct = true;
    j++;
  }
  else
  {
    correct = false;
    end();
  }
  }
  
  if (Button_Right)
  { 
    lightRed();
    drawBoard();
    playerTurn[j] = 2;
    
  if (playerTurn[j] == computerTurn[j])
  {
    correct = true;
    j++;
  }
  else
  {
    correct = false;
    end();
  }
  }
  
  if (Button_Up)
  {   
    lightGreen();
    drawBoard();
    playerTurn[j] = 3;
    
  if (playerTurn[j] == computerTurn[j])
  {
    correct = true;
    j++;
  }
  else
  {
    correct = false;
    end();
  }
  }
  
  if (Button_Down)
  {
    lightBlue();
    drawBoard();
    playerTurn[j] = 4;
    
  if (playerTurn[j] == computerTurn[j])
  {
    correct = true;
    j++;
  }
  else
  {
    correct = false;
    end();
  }
  
  }
  }
  
  if (correct)
  {
    cont = true;
    score++;
    SetAuxLEDs(score + 1);
    delay(500);
  }
  }
}
DisplaySlate();
Tone_Update();
}
  
 


      

   
  
 
    
  
  

  

