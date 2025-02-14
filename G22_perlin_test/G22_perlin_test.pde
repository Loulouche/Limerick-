//	Introduction to Processing by Robin Parmar. MIT License.

/*	LESSON G22: Perlin Texture
 
 Perlin noise was developed by Ken Perlin to produce organic textures
 and graphical forms. It is a type of gradient noise that returns
 pseudo-random values.
 
 This example fills a canvas with colour transitions.
 */

// ** STARTING CODE to be developed in lab **

// scale for traversing Perlin space: should be quite tiny
float scale = .008;

// colour hue
float h;
float t = 0;
float delta = 0.1;

void setup() {
  size(600, 600);
  colorMode(HSB, 1.);
}

void draw(){
  
  // for each point on the canvas...
  for (int i=0; i<width; i++) {
    for (int j=0; j<height; j++) {

      // to be replaced with a Perlin value
      h = noise(t + i*scale, j*scale);
      
      //float v = noise(i*scale, j*scale);
      
      // arbitrarily choose saturation and brightness
      stroke(h, .7, .8);
      point(i, j);
    }
  }
  t += delta;
}
