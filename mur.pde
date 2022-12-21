public class mur  {
    private int taille;
    private int hauteur;
    private brique brique;

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


    public mur (int t, int h, brique b) {
        this.hauteur = h;
        this.taille = t;
        this.brique = b;
    }


    public void afficher_mur(boolean pair){
        pushMatrix();
        int n = 0;
        if (!pair){
            n = 1;
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

}
