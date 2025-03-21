//  Introduction to Processing by Robin Parmar. MIT License.

/*	P01 AtomSimple

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
        
    ASSUMPTIONS
    	We don't need to manipulate individual atoms, only the cluster as a whole.
    
    WHAT YOU WILL LEARN
    	* Tips on how to use classes.
    	* How to maintain an array of instances.
    	* Compact syntax for iterating over an array.
    	* How to implement an object factory.
        
    IN THIS VERSION
    	The Atom class is created. 
	    All required components are provided, but without optimisation.
*/

// an array of atoms
Atom[] cluster;

// size of the array
int size = 1000;

int BLACK = 0;

void setup() {
    fullScreen();
	colorMode(HSB, 1.);
	noStroke();

    cluster = new Atom[size];
    initialise();
}

void draw() {
    background(BLACK);

	// read it like this:
    // for each 'a' of type 'Atom' in 'cluster'
    for (Atom a: cluster) {            
        a.display();
    }  
}

// new initial values when the mouse is clicked
void mousePressed() {
   initialise();
}

void initialise() {
    for (int i=0; i<size; i++) {
        // assign a new Atom instance to the array position
        cluster[i] = new Atom();               
    }
}
