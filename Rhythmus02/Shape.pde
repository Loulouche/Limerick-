/* this is my rectangle file */

class Shape 
{
  // coordonee
  int x, y;
  //width and height
  int w, h;
  color c;
  int lifespan;
  float wDelta, hDelta;
  
  Shape(int x_, int y_, int w_, int h_, int w2_, int h2_, int lifespan_, color c_)
  {
    x = x_;
    y = y_;
    w = w_;
    h = h_;
    c = c_;
    lifespan = lifespan_;
    
    wDelta = float(w2_ - w) / float(lifespan);
    hDelta = float(h2_ - h) / float(lifespan);
  }
  
  
  void display ()
  {
    w += wDelta;
    h += hDelta;
    
    rect(x, y, w, h);
    fill(c);
  }
  
  boolean isDead()
  {
    lifespan --;
    return lifespan < 1;
  }
  
}
