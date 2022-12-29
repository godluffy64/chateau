public class Mur_porte extends Mur {
  private int porte_longueur;
  private int porte_hauteur;

  public int getPorte_longueur() {
    return this.porte_longueur;
  }

  public void setPorte_longueur(int pl) {
    this.porte_longueur = pl;
  }

  public int getPorte_hauteur() {
    return this.porte_hauteur;
  }

  public void setPorte_hauteur(int ph) {
    this.porte_hauteur = ph;
  }

  public Mur_porte(int t, int h, Brique b, int c, int pl, int ph) {
    super( t, h, b, c);
    this.porte_longueur = pl;
    this.porte_hauteur = ph;
  }

  public void ligne_porte() {
    pushMatrix();
    int m = getTaille()/2;
    int x1 = m - getPorte_longueur()/2;
    int x2 = m + getPorte_longueur()/2 -1 ;
    for (int j = 0; j < getTaille() ; j++) {
      if ( j < x1 || j > x2){
        getBrique().afficher_brique();  
      }
      translate(getBrique().getLongueur(),0,0); 
    }
    popMatrix();
  }

  public void afficher_mur(boolean pair) {
    pushMatrix();
    for (int i = 0; i < getHauteur(); i++)
    {
      if ( i >= getPorte_hauteur()){
        afficher_ligne(true);
      }
      else ligne_porte();
      translate(0, - getBrique().getHauteur(), 0);
    }
    popMatrix();
  }
}
