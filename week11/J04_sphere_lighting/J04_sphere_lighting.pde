//  Introduction to Processing by Robin Parmar. MIT License.

/*  LESSON J02: Sphere Lighting
    
	Combines various lighting effects.
	The mouse emulates a directional source.

	NOTE: Annoyingly, we cannot use colour values to specify attributes.
*/

// direction of light source
float x, y, z;

void setup() {
    fullScreen(P3D);
	noStroke();    

	// this is important for the specular highlight
    sphereDetail(100);
}

void draw() {
    // grey
    background(40);

	// mouse controls light source direction
	x = map(mouseX, 0, width,  TWO_PI, -TWO_PI);
    y = map(mouseY, 0, height, TWO_PI, -TWO_PI);
	z = -1.;

	// all red light and some blue will reflect
    ambient(255, 0, 100);

	// some ambience
    ambientLight(80, 80, 80);
    
    // sets specular colour for light that follows
    lightSpecular(200, 200, 200);

    // specifies colour and direction
    directionalLight(180, 255, 180, x, y, z);

    // glossy surface, focuses highlight
    shininess(255);

    translate(width/2, height/2);
    sphere(160);
}
