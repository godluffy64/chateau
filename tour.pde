public class tour {
    private mur mur;

    public tour(mur m){
        this.mur = m;
    }
    public void afficher_tour(){
        pushMatrix();
        mur.afficher_mur(true);
        rotateY(PI/2);
        translate(mur.brique.getLongueur()/4,0, - mur.brique.getLongueur()/4);
        mur.afficher_mur(false);
        popMatrix();
    }

}
