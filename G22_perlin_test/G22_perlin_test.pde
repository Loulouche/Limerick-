//	Introduction to Processing by Robin Parmar. MIT License.

/*	LESSON G22: Perlin Texture
 
 Perlin noise was developed by Ken Perlin to produce organic textures
 and graphical forms. It is a type of gradient noise that returns
 pseudo-random values.
 
 This example fills a canvas with colour transitions.
 */

// ** STARTING CODE to be developed in lab **

// scale for traversing Perlin space: should be quite tiny
float scale = .003; //gere le zoom du truc

// colour hue
float h;
float t = 0;
float delta = 0.04; //gere la vitesse 
int sizer = 5;

void setup() {
  size(600, 600);
  fullScreen();
  colorMode(HSB, 1.);
  noStroke(); //suprime le quadrillage
}

void draw(){
  
  // for each point on the canvas...
  for (int i=0; i<width; i+=sizer) {
    for (int j=0; j<height; j+=sizer) {

      // to be replaced with a Perlin value
      h = noise(t + i*scale, t + j*scale);
      
      //float v = noise(i*scale, j*scale);
      
      // arbitrarily choose saturation and brightness
      fill(h, .7, .8);
      rect(i, j, sizer, sizer);
    }
  }
  t += delta;
}
