/*
    Each atom rendered as a circle.
    Position, size, and colour are initially randomised.
    Movement is in Perlin space.
*/
class Atom {
    float x, y;             // position in space
    float d;                // diameter
    color c;                // colour of atom
    float xper, yper;       // coordinates in Perlin space
    float speed = 0.001;    // speed in Perlin space
    
    Atom() {
        initialise();
    }
    
    // randomise values
    void initialise() {
        // randomise Perlin position (instead of actual position)
        xper = random(width);
        yper = random(height);
        
        // *CHANGED*
        d = 6.;
    	c = color(.8);
    }

    // draw a circle
    void display() {
        fill(c);
        circle(x, y, d);
    }

    // coordinates are determined by Perlin space
    void update() {
        x = map(noise(xper), 0, 1, -200, width+200);
        y = map(noise(yper), 0, 1, -200, height+200);

        // increment values to traverse space
        xper += speed;
        yper += speed;
    }
}
