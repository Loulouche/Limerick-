/*
    The Universe holds an array of Atoms. This is an object factory, 
    creating and managing the individual particles.
*/

class Universe {
    int size;
	Atom[] cluster;

    Universe(int size_) {
    	size = size_;
		cluster = new Atom[size];
        initialise();        
    }

    // display each atom in the universe
    void display() {
    	for (Atom a : cluster) {
            a.update();

            // *NEW*
			collisions(a);

            a.display();
    	}  
    }

	// *NEW*
    // check every other atom against the specified atom
    void collisions(Atom a) {
        float d;
        
        for (Atom b : cluster) {
            // don't check atom with itself!
            if (a != b) {
                // distance between atoms
                d = a.loc.dist(b.loc);
                
                // compare to sum of radii
                if (d < a.d/2 + b.d/2) {
                    // reverse the vector
                    a.vel.mult(-1);
                }
            }
        }  
    }

    void initialise() {
        for (int i=0; i<size; i++) {
            cluster[i] = new Atom();
        }
    }
}
