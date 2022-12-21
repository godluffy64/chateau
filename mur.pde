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


    public mur (int t, int h, brique b, int c, int m) {
        this.hauteur = h;
        this.taille = t;
        this.brique = b;
        this.nombre_creneaux = c;
        this.nombre_meutrieres = m;
    }

    public void creneau(){
        pushMatrix();
        for (int i = 0; i < (int) getTaille()*0.66; i++){
            
            brique.afficher_brique();
            translate((brique.getLongueur()*4)/3,0,0);
            
        }
        popMatrix();
    }
    public void meurtriere(boolean pair){

    }
    public void afficher_ligne(boolean pair){
        int n = 0;
        pushMatrix();
        if (!pair){
                n = 1;
                translate(-brique.getLongueur()/4,0,0);
                brique.afficher_demi_brique();
                translate( brique.getLongueur() - brique.getLongueur()/4,0,0);
            }
            
            for(int i = n; i < getTaille(); i++){
                brique.afficher_brique();
                translate(brique.getLongueur(), 0, 0);
            }

            if (!pair){
                translate(-brique.getLongueur()/4,0,0);
                brique.afficher_demi_brique();
                
            }
            popMatrix();
    }

    public void afficher_mur(boolean pair){
        pushMatrix();
        for (int i = 0; i< getHauteur(); i++){
            if ( i < getHauteur() - getNombre_creneaux()){
                if( i % 2 == 0){
                    afficher_ligne(pair);
                }
                else afficher_ligne(!pair);
                
            }
            else creneau();
        translate(0,- brique.getHauteur(),0);
        }
        
        popMatrix();
    }

}
