/*
	Each atom will be rendered as an achromatic circle.
	Position, size, and colour are initially randomised.
*/
class Atom { 
    // *NEW*
    // use PVector for position and velocity
    // this complex type provides vector math operators and other goodies 
    PVector loc, vel; 

    float d, c;

    Atom() {
        initialise();
    }

    void initialise() {
        // *NEW*
        // randomised vectors
        loc = new PVector(random(width), random(height));
        vel = new PVector(random(-2., 2.), random(-2., 2.));
    
        d = random(4, 10);
        c = random(.2, 1);
	}

    // changing position means: adding velocity to current location
    void update() {
        // *NEW*
        loc.add(vel);
    }
  
    void display() {
        fill(c);
        
        // *NEW*
        circle(loc.x, loc.y, d);
    }
}
