/*
    The Universe holds an array of Atoms. 
    This is an object factory, managing the individual particles.
*/

class Universe {
    // how many atoms?
    int size;                             

	// array of type Atom

	// We don't need the functionality of an ArrayList because 
	// we are not changing the number of atoms once they are initialised. 
	Atom[] cluster;                       

    // constructor
    Universe(int size_) {
    	size = size_;

		// create array of specified size
		cluster = new Atom[size];         

        initialise();
    }

    // display each atom in the universe
    // this uses class iterator syntax
    void display() {
        for (Atom a: cluster) {
            a.display();
    	}  
    }

    void initialise() {
		for (int i=0; i<size; i++) {
			cluster[i] = new Atom(); 
		}
	}
}
