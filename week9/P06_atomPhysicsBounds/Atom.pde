/*
	Each atom will be rendered as an achromatic circle.
	Position, size, and colour are initially randomised.
*/
class Atom { 
    PVector loc, vel;
    float d, c;

    Atom() {
        initialise();
    }

    void initialise() {
        // randomised vectors
        loc = new PVector(random(width), random(height));
        vel = new PVector(random(-2, 2), random(-2, 2));
    
        d = random(4, 10);
        c = random(.2, 1);
	}

    // changing position is simply adding velocity to current location
    void update() {
        loc.add(vel);

        // *NEW*
		checkBounds();
    }
  
    // *NEW*
    // if we hit the screen border, wrap around to other side *NEW*
    void checkBounds() {
        if (loc.x > width) {
            loc.x = 0;
        } else if (loc.x < 0) {
            loc.x = width;
        }
    
        if (loc.y > height) {
            loc.y = 0;
        } else if (loc.y < 0) {
            loc.y = height;
        }
    }

    void display() {
        fill(c);
        circle(loc.x, loc.y, d);
    }
}
