//	Introduction to Processing by Robin Parmar. MIT License.

/*	LESSON G22: Perlin Texture
    
    Perlin noise was developed by Ken Perlin to produce organic textures
    and graphical forms. It is a type of gradient noise that returns 
    pseudo-random values.  
    
    This example fills a canvas with colour transitions.
*/

// ** STARTING CODE to be developed in lab **

// scale for traversing Perlin space: should be quite tiny
float scale = .001;

// colour hue
float h;

void setup() {
	size(600, 600);
    colorMode(HSB, 1.);

    // for each point on the canvas...
	for (int i=0; i<width; i++) {
		for (int j=0; j<height; j++) {
    
    		// to be replaced with a Perlin value
			h = 0;

			// arbitrarily choose saturation and brightness
            stroke(h, .7, .8);                    
            point(i, j);
		}
	}

	// we draw only once
	noLoop();
} 
