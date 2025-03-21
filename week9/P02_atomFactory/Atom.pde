/*
	Each atom will be rendered as an achromatic circle.
	Position, size, and colour are randomised.
*/

class Atom {
    float x, y;				// position in space
    float d;				// diameter
    float c;				// monochrome colour of atom

	Atom() {
    	initialise();
	}
    
    // randomise values
    void initialise() {
        x = random(width);
        y = random(height); 
        d = random(4, 10);
        c = random(.2, 1);
    }

    // draw a circle
	void display() {
        fill(c);
        circle(x, y, d);
	}
}
