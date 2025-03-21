/*
    Each atom will be rendered as an achromatic circle.
    Position, size, and colour are initially randomised.
*/

class Atom { 
    PVector loc, vel;
    float d;
    color c;
	
    Atom() {
        initialise();
    }

    void initialise() {
        d = random(20, 40);
        c = color(random(.5, .6), random(0, 1.), random(.4, 1.));

        // create randomised vectors

		// *NEW*
		// don't create near borders
        loc = new PVector(random(d, width-d), random(d, height-d));
        vel = new PVector(random(-2, 2), random(-2, 2));    
    }

    // changing position is simply adding velocity to current location
    void update() {
        loc.add(vel);
        checkBounds();
    }
  
    // if we hit the screen border, bounce
    void checkBounds() {
        // *NEW*
        // add in radius to bounds checking
        
        // if we reach x extent, reverse x part of vector
        if ((loc.x+d/2>width) || (loc.x<d/2)) {
            vel.x = -vel.x;     
        }

        // similar for y
        if ((loc.y+d/2>height) || (loc.y<d/2)) {
            vel.y = -vel.y;     
        }

    }

    void display() {
        fill(c);
        circle(loc.x, loc.y, d);
    }
}
