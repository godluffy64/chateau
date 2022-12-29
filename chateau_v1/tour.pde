public class Tour {
  private Mur mur;

  public Mur getMur() {
    return this.mur;
  }

  public void setMur(Mur m) {
    this.mur = m;
  }

  public Tour(Mur m) {
    this.mur = m;
  }

  public float longueur_brique() {
    return  getMur().getBrique().getLongueur();
  }

  public float hauteur_brique() {
    return  getMur().getBrique().getHauteur();
  }


  public void afficher_tour() {
    pushMatrix();
    mur.afficher_mur(true);                 // sud
    popMatrix();

    pushMatrix();
    rotateY(PI/2);
    translate(mur.brique.getLongueur()*.25, 0, - mur.brique.getLongueur()/4);
    mur.afficher_mur(false);                // ouest
    popMatrix();

    pushMatrix();
    translate(0, 0, -(mur.brique.getLongueur()*(mur.getTaille() -.5)));
    mur.afficher_mur(true);                 // nord

    popMatrix();

    pushMatrix();
    rotateY(PI/2);

    translate(mur.brique.getLongueur()*.25, 0, mur.brique.getLongueur()*(mur.getTaille()-.75));
    mur.afficher_mur(false);                //est
    popMatrix();
    if (getMur().getTaille() %2 == 1) {
      translate(longueur_brique()*(getMur().getTaille()/2) , -(hauteur_brique()*(getMur().getHauteur()-getMur().getNombre_creneaux()-1)), -longueur_brique()*(getMur().getTaille()/2 +.25) );
    }
    else translate(longueur_brique()*(getMur().getTaille()/2 -0.5), -(hauteur_brique()*(getMur().getHauteur()-getMur().getNombre_creneaux()-1)), -longueur_brique()*(getMur().getTaille()/2 -.25) );
    fill(0, 0, 255);
    box(longueur_brique()*(mur.getTaille() - 1), hauteur_brique(), longueur_brique()*(mur.getTaille() - 1));
    noFill();
  }
}
