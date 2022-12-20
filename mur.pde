public class mur  {
    private int taille;
    private int hautueur;
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

	public int getHautueur() {
		return this.hautueur;
	}

	public void setHautueur(int hautueur) {
		this.hautueur = hautueur;
	}


    public mur (int t, int h) {
        this.hauteur = h;
        this.taille = t;
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
