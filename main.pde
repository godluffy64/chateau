QueasyCam cam;
brique b;
mur m;
color c = color(245, 245, 220);
void setup(){
	cam = new QueasyCam(this);
	cam.speed = 0.5;
	cam.position = new PVector(0,0,0);
    b = new brique(4,2,c);
    m = new mur(5,6,b,2);

	size(1000,1000,P3D);
}

void draw(){
	background(0);
    //for (int i = 0; i < 5; i++){
     //   box(20,20,20)
    //}
	//b.afficher_brique();
    m.afficher_mur(false);
    translate(50,0,0);
    m.afficher_mur(true);
}
