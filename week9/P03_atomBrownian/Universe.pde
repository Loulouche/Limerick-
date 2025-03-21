/*
    The Universe holds an array of Atoms. This is an object factory, 
    creating and managing the individual particles.
*/

class Universe {
    int size;
	Atom[] cluster;

    // constructor
    Universe(int size_) {
    	size = size_;
        cluster = new Atom[size]; 
		initialise();        
    }

    // display each atom in the universe
    void display() {
    	for (Atom a: cluster) {
            a.update();            	// *NEW*            
            a.display();
    	}  
    }

    void initialise() {
        for (int i=0; i<size; i++) {
            cluster[i] = new Atom();
          }
    }
}
