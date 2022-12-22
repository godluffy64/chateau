public class pont {
  private mur mur;
  private mur mur2;


  public mur getMur2() {
    return this.mur2;
  }

  public void setMur2(mur m) {
    this.mur2 = m;
  }

  public mur getMur() {
    return this.mur;
  }

  public void setMur(mur m) {
    this.mur = m;
  }

  public pont(mur m1, mur m2) {
    this.mur = m1;
    this.mur2 = m2;
  }

  public void afficher_pont() {
    pushMatrix();
    mur.afficher_mur(true);                                            // sud
    popMatrix();
    pushMatrix();
    rotateY(PI/2);
    translate(getMur().brique.getLongueur()*3/4,0,-getMur().brique.getLongueur()/4);
    mur2.afficher_mur(false);                                            // ouest
    popMatrix();
    pushMatrix();
    translate(getMur2().brique.getLongueur()/2,0,-(getMur2().brique.getLongueur() * getMur2().getTaille()) );
    mur.afficher_mur(true);                                           // nord
    popMatrix();
    
    pushMatrix();
    rotateY(PI/2);
    translate( getMur().brique.getLongueur()/4,0,getMur().brique.getLongueur() * getMur().getTaille() - getMur().brique.getLongueur()/4);
    mur2.afficher_mur(false);                                      // est
    popMatrix();
    
    
    /*translate(0, 0, getMur2().brique.getLongueur() * getMur2().getTaille() );
    mur.afficher_mur(true);
    rotateY(PI/2);
    translate(  getMur2().brique.getLongueur()*3/4,0, - getMur2().brique.getLongueur()/4);
    mur2.afficher_mur(false);
    translate(- getMur().brique.getLongueur()/2,0,getMur().brique.getLongueur() * getMur().getTaille() - getMur().brique.getLongueur()/2) ;
    mur2.afficher_mur(false);*/
  }
}
