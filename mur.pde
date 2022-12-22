public class mur  {
    private int taille;
    private int hauteur;
    private brique brique;
    private int nombre_creneaux;
    private int nombre_meurtrieres;
    private int hauteur_meurtriere;

    public int getHauteur_meutriere(){
        return this.hauteur_meurtriere;
    }

    public void setHauteur_meurtriere(int hm){
        this.hauteur_meurtriere = hm;
    }

    public int getNombre_meurtrieres(){
        return this.nombre_meurtrieres;
    }

    public void setNombre_meurtrieres(int nb_m){
        this.nombre_meurtrieres = nb_m ;
    }

    public int getNombre_creneaux(){
        return this.nombre_creneaux;
    }
    public void SetNombre_creneaux(int nb_c){
        this.nombre_creneaux = nb_c;
    }

	public brique getBrique() {
		return this.brique;
	}

	public void setBrique(brique brique) {
		this.brique = brique;
	}


	public int getTaille() {
		return this.taille;
	}

	public void setTaille(int taille) {
		this.taille = taille;
	}

	public int getHauteur() {
		return this.hauteur;
	}

	public void setHauteur(int hauteur) {
		this.hauteur = hauteur;
	}


    public mur (int t, int h, brique b, int c, int m, int hm) {             // Constructeur
        this.hauteur = h;
        this.taille = t;
        this.brique = b;
        this.nombre_creneaux = c;
        this.nombre_meurtrieres = m;
        this.hauteur_meurtriere = hm;
    }

    public void creneau(){
        pushMatrix();
        for (int i = 0; i < (int) getTaille()*0.66; i++){
            brique.afficher_brique();
            translate((brique.getLongueur()*4)/3,0,0);
            
        }
        popMatrix();
    }
    /*public void meurtriere(boolean pair){
        for (int i = 0; i < getTaille(); i++){

        }
    }*/

    public void position_meutriere(){
        int y1 = getHauteur()/5;                    // coordonnée y du bas
        int y2 = getHauteur() - y1;                 // coordonnée y du haut
        int x = getHauteur()*3/5;                   // nombre lignes y du milieu
        int x2 = x/nombre_meurtrieres;              // nombre lignes par meurtrieres
        int z = x2 - nombre_meurtrieres * hauteur_meurtriere;   // nombre lignes d'espace entre meurtrieres totale
        int z2 = z/(nombre_meurtrieres-1);                      // nombre lignes d'espace entre chaque meurtrieres 
        
    }

    public void afficher_ligne(boolean pair, boolean meurtriere){
        int n = 0;
        pushMatrix();
        if (!pair){
                n = 1;
                translate(-brique.getLongueur()/4,0,0);
                brique.afficher_demi_brique();
                translate( brique.getLongueur() - brique.getLongueur()/4,0,0);
            }
            for(int i = n; i < getTaille(); i++){
                if( (i == (int(getTaille()/2))) && (meurtriere)  && (pair)){
                    translate(brique.getLongueur()/2 - brique.getLongueur()/4,0,0);
                    brique.afficher_demi_brique();
                    translate(brique.getLongueur()/2 + brique.getLongueur()/4,0,0);
                }

                else if( (i == (int(getTaille()/2))) && (meurtriere)  && (!pair)){
                    translate(- brique.getLongueur()/4,0,0);
                    brique.afficher_demi_brique();
                    translate(brique.getLongueur() + brique.getLongueur()/4,0,0);
                }
                else {
                    brique.afficher_brique();
                    translate(brique.getLongueur(), 0, 0);
                }
            }

            if (!pair){
                translate(-brique.getLongueur()/4,0,0);
                brique.afficher_demi_brique();
                
            }
            popMatrix();
    }

    public void afficher_mur(boolean pair){
        int y1 = getHauteur()/5;                    // coordonnée y du bas
        int y2 = getHauteur() - y1;                 // coordonnée y du haut
        int x = getHauteur()*3/5;                   // nombre lignes y du milieu
        int x2 = x/nombre_meurtrieres;              // nombre lignes par meurtrieres
        int z = x2 - nombre_meurtrieres * hauteur_meurtriere;   // nombre lignes d'espace entre meurtrieres totale
        int z2 = z/(nombre_meurtrieres-1);                      // nombre lignes d'espace entre chaque meurtrieres
        pushMatrix();
        for (int i = 0; i< getHauteur(); i++){
            if ( i < getHauteur() - getNombre_creneaux()){
                if( i % 2 == 0){
                    if ((i < y1) || ( i > y2) || ( (i - y1 ) % (z2 + getHauteur_meutriere()) < getHauteur_meutriere())){
                        afficher_ligne(pair,false);
                    }
                    else afficher_ligne(pair,true);
                }
                else {
                    if ((i < y1) || ( i > y2) || ( (( i - y1 ) % (z2 + getHauteur_meutriere()) < getHauteur_meutriere()))){
                        afficher_ligne(!pair,false);
                }
                else afficher_ligne(!pair,true);
            }
            }
            else creneau();
        translate(0,- brique.getHauteur(),0);
        }
        
        popMatrix();
    }
}
