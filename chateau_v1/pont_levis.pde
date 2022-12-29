public class Pont_levis extends Pont_porte {
  private int longueur_pont;
  private boolean p;

  public int getLongueur_pont() {
    return this.longueur_pont;
  }

  public void setLongueur_pont(int lp) {
    this.longueur_pont = lp;
  }

  public boolean getP() {
    return this.p;
  }

  public void setP(boolean p) {
    this.p =p;
  }

  public Pont_levis(Mur_porte mp, Mur_base mb, int hr, int lp, float o, boolean p) {
    super(mp, mb, hr, o);
    this.longueur_pont = lp;
    this.p = p;
  }

  public void afficher_pont() {
    rotateY(getOrientation());
    remplir_pont();
    pushMatrix();                  // nouvelle construction
    getMur().afficher_mur(true);            // sud
    translate(0, 0, getMur2().brique.getLongueur() * getMur2().getTaille() + getMur2().brique.getLongueur()/2);
    getMur().afficher_mur(true);             // nord
    popMatrix();
    pushMatrix();
    translate(getMur().getBrique().getLongueur() * getMur().getTaille()/2 -  getMur().getBrique().getLongueur()/2, - ( getMur().getHauteur() - getHauteur_rembarde() ) * (getMur().getBrique().getHauteur()), getMur2().getBrique().getLongueur() * getMur2().getTaille()/2 + getMur().getBrique().getLongueur()/4);
    fill(255, 0, 0);
    box(getMur().getBrique().getLongueur() * ( getMur().getTaille()  ), getMur().getBrique().getHauteur(), getMur2().getBrique().getLongueur() * ( getMur2().getTaille()  ) );
    noFill();
    popMatrix();
    pushMatrix();
    //rotateX(-PI/2);
    //translate(0, getMur().getBrique().getLongueur()/2, 0);
    //afficher_pont();
    if (getP()){
      translate(0,0,(getMur2().getTaille()+1) * getMur2().getBrique().getLongueur() + getMur().getBrique().getLongueur() * getLongueur_pont());
    }
    translate(getMur().getBrique().getLongueur() * getMur().getTaille()/2 - getMur().getBrique().getLongueur()/2, 0, -getMur().getBrique().getLongueur() * getLongueur_pont()/2 - getMur().getBrique().getLongueur()/4);
    fill(0, 255, 0);
    box(getMurPorte().getPorte_longueur()  * getMur().getBrique().getLongueur(), getMurPorte().getBrique().getHauteur(), getMur().getBrique().getLongueur() * getLongueur_pont());
    noFill();
    popMatrix();
  }
}
