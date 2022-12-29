public class Mur_meurtriere extends Mur{
  private int nombre_meurtrieres;
  private int hauteur_meurtriere;

  public int getHauteur_meurtriere() {
    return this.hauteur_meurtriere;
  }

  public void setHauteur_meurtriere(int hm) {
    this.hauteur_meurtriere = hm;
  }

  public int getNombre_meurtrieres() {
    return this.nombre_meurtrieres;
  }

  public void setNombre_meurtrieres(int nb_m) {
    this.nombre_meurtrieres = nb_m ;
  }
  
  public Mur_meurtriere(int t, int h, Brique b, int c, int m, int hm){
    super(t,h,b,c);
    this.nombre_meurtrieres = m;
    this.hauteur_meurtriere = hm;
  }
  
  public void afficher_ligne_meurtriere(boolean pair){
    //getBrique().setCouleur(c2);
    int n = 0;
    pushMatrix();
    if (!pair) {
      n = 1;
      translate(-getBrique().getLongueur()/4, 0, 0);
      
      getBrique().afficher_demi_brique();
      translate( getBrique().getLongueur() - getBrique().getLongueur()/4, 0, 0);
    }
    for (int i = n; i < getTaille(); i++) {
      if ( (i == (int(getTaille()/2)))  && (pair)) {
        translate(getBrique().getLongueur()/2 - getBrique().getLongueur()/4, 0, 0);
        getBrique().afficher_demi_brique();
        translate(getBrique().getLongueur()/2 + getBrique().getLongueur()/4, 0, 0);
      } else if ( (i == (int(getTaille()/2)))  && (!pair)) {
        translate(- getBrique().getLongueur()/4, 0, 0);
        getBrique().afficher_demi_brique();
        translate(getBrique().getLongueur() + getBrique().getLongueur()/4, 0, 0);
      }else {
        getBrique().afficher_brique();
        translate(getBrique().getLongueur(), 0, 0);
      }
    }

    if (!pair) {
      translate(-getBrique().getLongueur()/4, 0, 0);
      getBrique().afficher_demi_brique();
    }
    popMatrix();
    
  }
  
  public void afficher_mur(boolean pair){
    if ( getNombre_meurtrieres() > 0) {                                // avec meurtrieres

      int y1 = getHauteur()/5;                    // espace ou il n'y a pas de meurtriere en bas de la tour
      int y2 = getHauteur() - y1;                 // espace ou il n'y a pas de meurtriere en haut de la tour
      int x = getHauteur()*3/5;                   // espace ou il est possible d'avoir une meurtriere
      int x2 = x/nombre_meurtrieres;              // nombre lignes par meurtrieres 
      int z = x - nombre_meurtrieres * hauteur_meurtriere;   // nombre lignes d'espace entre meurtrieres totale
      int z2 = 0;
      int a2 = x / 2 - getHauteur_meurtriere()/2;                                          // pour cas une seule meurtriere, espace entre les zones ou il n'y a pas de meutriere et la meurtriere
      if ( getNombre_meurtrieres() > 1 ) {
        z2 = z/(nombre_meurtrieres-1);                        // espace entre chaque meutriere
        
      }
      
      if (getNombre_meurtrieres() == 1) {            // 1 meurtriere
        pushMatrix();
        for (int i = 0; i< getHauteur(); i++) {
          if ( i < getHauteur() - getNombre_creneaux()) {
            if ((i < y1 + a2) || ( i > y2 - a2 -1) || i < y1 || i >= y2){
              if ( i % 2 == 0) {
                afficher_ligne(pair);
              }
              else afficher_ligne(!pair);
            }
            else if ( i % 2 == 0) {
                afficher_ligne_meurtriere(pair);
              }
              else afficher_ligne_meurtriere(!pair);
            
            
            
            
          }else creneau();
        translate(0, - getBrique().getHauteur(), 0);
        }
        popMatrix();
      }
      
      else if ( getNombre_meurtrieres() > 1 ) {            // plusieurs meurtrieres
      // nombre lignes d'espace entre chaque meurtrieres
      pushMatrix();
      for (int i = 0; i< getHauteur(); i++) {
        if ( i < getHauteur() - getNombre_creneaux()) {
          if ( i % 2 == 0) {
            if ((i < y1) || ( i >= y2) || ( (i - y1 ) % (z2 + getHauteur_meurtriere()) >= getHauteur_meurtriere()) && getNombre_meurtrieres() > 1 ) {
              afficher_ligne(pair);
            } else afficher_ligne_meurtriere(pair);
          } else {
            if ((i < y1) || ( i >= y2) || ( (i - y1 ) % (z2 + getHauteur_meurtriere()) >= getHauteur_meurtriere()) && getNombre_meurtrieres() > 1 ) {
              afficher_ligne(!pair);
            } else afficher_ligne_meurtriere(!pair);
          }
        } else creneau();
        translate(0, - getBrique().getHauteur(), 0);
      }

      popMatrix();
    }
    }
  }
}
