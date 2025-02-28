import processing.javafx.*;

// how many points de we need on a curve ?
int PIX = 1000;
int a,b;

//fixed colours
int WHITE = 1;
int RED = color(0, 1., 1.);

void setup()
{
  //fx2d gives us a smoother render 
  fullScreen(FX2D);
  colorMode(HSB, 1.);
  
  int WHITE = 1;
  int RED = color(0, 1., 1.);
  
  a = int(height * 4.);
  b = 4;
  
  background(WHITE);
  polarRose(300, 4 , RED);
  noLoop();
  
}

//void draw()
//{
  //background(WHITE);
  
  // choose parameters to try differents shapes
 // polarRose(300, 4 , RED);
//}

void polarRose(float a, float b, color c)
{
  float x, y, t, r;
  pushStyle();
  pushMatrix();
  noFill();
  strokeWeight(2);
  stroke(c);
  translate(width/2 , height/2);
  
  beginShape();
    for ( int i = 0; i <= PIX; i++)
    {
      t = map(i, 0, PIX-1, 0, TWO_PI);
      
      r = a * cos(b * t);
      x = r * cos(t);
      y = r * sin(t);
      
      vertex(x,y);
    }
    endShape();
    
    popStyle();
    popMatrix();
}
