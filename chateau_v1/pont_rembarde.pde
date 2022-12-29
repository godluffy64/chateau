public class Pont_rembarde extends Pont{
  public Pont_rembarde(Mur_base m1, Mur_base m2, int hr, float o){
    super(m1, m2, hr, o);
    getMur2().SetNombre_creneaux(0);
  }
  
   public void afficher_pont() {
    rotateY(getOrientation());
    pushMatrix();                  // nouvelle construction
    getMur().afficher_mur(true);            // sud
    translate(0, 0, getMur2().brique.getLongueur() * getMur2().getTaille() + getMur2().brique.getLongueur()/2);
    getMur().afficher_mur(true);             // nord
    popMatrix();
    pushMatrix();
    translate(getMur().getBrique().getLongueur() * getMur().getTaille()/2 -  getMur().getBrique().getLongueur()/2, - ( getMur().getHauteur() - getHauteur_rembarde() ) * (getMur().getBrique().getHauteur()) , getMur2().getBrique().getLongueur() * getMur2().getTaille()/2 + getMur().brique.getLongueur()/4);
    fill(255,0,0);
    box(getMur().getBrique().getLongueur() * ( getMur().getTaille() ) , getMur().getBrique().getHauteur() , getMur2().getBrique().getLongueur() * ( getMur2().getTaille()  ) );
    noFill();
    popMatrix();
  }
}
