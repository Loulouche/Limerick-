//  Introduction to Processing by Robin Parmar. MIT License.

/*  P09_atomPhysicsEnhanced

    This code set will demonstrate a flexible method for creating a 
    particle system. The goal is to maintain a very simple top-level 
    sketch, with all the details clearly organised in other tabs.

    The following versions are part of this set:    
        1. static atoms
        2. static atoms with object factory
        3. Brownian motion
        4. Perlin noise motion
        5. physics-based motion
        6. physics with bounds
        7. physics with bounce
        8. physics with collisions
        9. enhanced physics

    IN THIS VERSION
        Various enhancements have been made to avoid "degenerate" situations.
        
    	When atoms bounce, their position is offset slightly: 
            Universe.collisions()
    
        Atoms do not overlap on creation:
        	Universe.initialise()
            Universe.makeAtom()
            
        Add radius to bounds checking:
            Atom.checkBounds()
    
        Don't create atoms near borders:
    	    Atom.initialise()

	MORE IDEAS
    	Improve the physics by giving each atom a mass, proportional to the diameter cubed.
    	Collisions should respect the momentum of a particle (mass * velocity).
    	Simulate a 3D distance by colliding atoms only if their luminosity is similar.   

*/

Universe us;

int BLACK = 0;

void setup() {
    fullScreen();
    colorMode(HSB, 1.);
    noStroke();

    us = new Universe(100);
}

void draw() {
    background(BLACK);
    us.display();
}

void mousePressed() {
    us.initialise();
}
