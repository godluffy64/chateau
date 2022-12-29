QueasyCam cam;
Brique b;
Mur m;
Mur_base m1;
Mur_base m2;
Tour t;
Tour t2;
Pont_rembarde pr;
Pont_porte pp;
Mur_porte mp;
Mur_base mb;
Mur_meurtriere mm;
Pont_levis pl;
Chateau ch;
color c = color(245, 245, 220);
color c2 = color(255, 0, 0);
int a =5;
int x = 10;
int y =40;
void setup() {
  cam = new QueasyCam(this);
  cam.speed = .5;
  b = new Brique(4, 2, c);
  mm = new Mur_meurtriere(10, 20, b, 2, 2, 4);
  m1 = new Mur_base(8, 20, b, 2);
  m2 = new Mur_base(40, 10, b, 2);
  mp = new Mur_porte(40, 10, b, 2, 5, 7);
  t = new Tour(mm);
  
  pp = new Pont_porte(mp, m1, 2, PI/2);
  pl = new Pont_levis(mp, m1, 2, 10, PI/2, false);
  pr = new Pont_rembarde(m2,m1,2,PI/2);
  ch = new Chateau();
  //ch.ajouterMur(mm,pc);
  ch.ajouterTour(t);
  //ch.ajouterMur(m1);
  
  ch.ajouterPont(pl);
  ch.ajouterPont(pr);
  ch.ajouterCoordTour(t, new PVector(0, 0));
  ch.ajouterCoordTour(t, new PVector(200, 0));
  ch.ajouterCoordTour(t, new PVector(200, 200));
  ch.ajouterCoordTour(t, new PVector(0, 200));
  ch.ajouterCoordPont(pl, new PVector(1, 159));
  ch.ajouterCoordPont(pr, new PVector(200, 159));
  
  
  
  
  ch.ajouterCoordPont(pr, new PVector(200,1));
  //ch.ajouterCoordPont(pr, new PVector(150,1));
  //ch.retirerTour(t2);
  //ch.retirerPont(p);

  //ch.ajouterMur(m1,pc1);
  //ch.afficherMurs();
  //ch.ajouterTour(t);
  strokeWeight(0);
  load();
  strokeWeight(1);
  size(1000, 1000, P3D);
}

void draw() {
  cam.speed = .5;
  println(cam.position.x + " "+cam.position.z); 
  background(0);
  sol();
  pushMatrix();
  mp = new Mur_porte(y, x, b, 2, a, 7);
  pp = new Pont_porte(mp, m1, 2, PI/2);
  pp.afficher_pont();
  //ch.afficher_chateau();
  popMatrix();
}

void keyPressed() {
  if (key == 'a') {
    a++;
      }
  if (key == 'w') {
    a--;
  }
  
  if (keyCode == 38 ){
    x++;
  }
  if (keyCode == 40){
    x--;
  }
  
  if (keyCode == 37 ) {
    y++;
  }
  
  if (keyCode == 39){
   y--; 
  }
}
