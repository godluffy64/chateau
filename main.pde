QueasyCam cam;
brique b;
mur m;
mur m1;
mur m2;
tour t;
pont p;
color c = color(245, 245, 220);
void setup() {
  cam = new QueasyCam(this);
  cam.speed = 1;
  cam.position = new PVector(0, 0, 0);
  b = new brique(4, 2, c);
  m = new mur(10, 40, b, 2, 3, 4);                      //(int t, int h, brique b, int c, int m, int hm)
  m1 = new mur(10, 5, b, 1, 0, 0);
  m2 = new mur(5, 4, b, 0, 0, 0);
  p = new pont(m1, m2);


  t = new tour(m);

  size(1000, 1000, P3D);
}

void draw() {
  background(0);
  //for (int i = 0; i < 5; i++){
  //   box(20,20,20)
  //}
  //b.afficher_brique();
  //m.afficher_mur(false);
  //translate(50,0,0);
  //m.afficher_mur(true);
  //t.afficher_tour();
  p.afficher_pont();
}
