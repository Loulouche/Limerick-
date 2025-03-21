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
        // create randomised vectors
        loc = new PVector(random(width), random(height));
        vel = new PVector(random(-2, 2), random(-2, 2));
    
        d = random(6, 16);
        c = random(.2, 1);
	}

    // changing position is simply adding velocity to current location
    void update() {
        loc.add(vel);
        checkBounds();
    }
  
    // if we hit the screen border, bounce
    void checkBounds() {
        // if we reach x extent, reverse x part of vector
        if ((loc.x>width) || (loc.x<0)) {
            vel.x = -vel.x;     
        }

        // similar for y
        if ((loc.y>height) || (loc.y<0)) {
            vel.y = -vel.y;     
        }
    }

    void display() {
        fill(c);
        circle(loc.x, loc.y, d);
    }
}
