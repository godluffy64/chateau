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


    public void afficher_mur(){
        pushMatrix();
        for(int i = 0; i < getTaille(); i++){
            brique.afficher_brique();
            translate(brique.getLongueur(), 0, 0);
        }
        popMatrix();
    }

}
