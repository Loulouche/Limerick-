// this is a comment 
 
 /* this is a 
longer comment */

color WHITE, BLACK;

//camel case variables names
// the fractional amount to change the size of a rectangle each frames
float xDelta, yDelta;

void setup()
{
  //conformes to 4:3 aspect ratio
  size(900,720);
  
  // 24 frame per second
  frameRate(24);
  
  rectMode(CENTER);
  colorMode(RGB, 1.);
  
  WHITE = color(1.);
  BLACK = color(0.);
  
 
}

void draw()
{
  if (frameCount <= 60)
  {
    xDelta = width / 60;
    background(WHITE);
    rect(width/2, height/2, xDelta * frameCount, height);
    fill(BLACK);
  }
  else if ( frameCount <= 90)
  {
    
    background(WHITE);
    xDelta = width / 30;
    rect(width/2, height/2, xDelta * (frameCount -60.), height);
     fill(BLACK);
  }
}
