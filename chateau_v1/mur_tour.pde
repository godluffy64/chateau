public class Mur_base extends Mur{
  public Mur_base(int t, int h, Brique b, int c){
    super(t,h,b,c);
  }
  
  public void afficher_mur(boolean pair){
    pushMatrix(); 
      for (int i = 0; i< getHauteur(); i++) {
        if ( i < getHauteur() - getNombre_creneaux()) {
          if ( i % 2 == 0) {
            afficher_ligne(pair);
          } else afficher_ligne(!pair);
        } else creneau();
        translate(0, - getBrique().getHauteur(), 0);
      }

      popMatrix();
  }
}
