/*
	Each atom will be rendered as an achromatic circle.
	Position, size, and colour are initially randomised.
	Movement is in Perlin space.
*/

class Atom {
    float x, y;				// position in space
    float d;				// diameter
    float c;				// monochrome colour of atom
    float xper, yper;		// coordinates in Perlin space *NEW*
    float speed = 0.001;	// speed in Perlin space *NEW*
    
	Atom() {
    	initialise();
	}
    
    // randomise values
    void initialise() {
	    // *NEW*
        // randomise Perlin position (instead of actual position)
        xper = random(width);
        yper = random(height);
        
        d = random(4, 10);
        c = random(.2, 1);
    }

    // draw a circle
	void display() {
        fill(c);
        circle(x, y, d);
	}

	// *NEW*
    // coordinates are determined by Perlin space
	void update() {
		x = map(noise(xper), 0, 1, -200, width+200);
		y = map(noise(yper), 0, 1, -200, height+200);

        // increment values to traverse space
        xper += speed;
        yper += speed;
    }
}
