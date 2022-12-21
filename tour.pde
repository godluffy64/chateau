public class tour {
    private mur mur;

    public tour(mur m){
        this.mur = m;
    }
    public void afficher_tour(){
        pushMatrix();
        mur.afficher_mur(true);                 // sud
        translate(0,0, - mur.brique.getLongueur()*mur.getTaille() + mur.brique.getLongueur()/2);
        mur.afficher_mur(true);                 // nord
        translate(0,0,mur.brique.getLongueur()*mur.getTaille() - mur.brique.getLongueur()/2);
        rotateY(PI/2);
        translate(mur.brique.getLongueur()/4,0, - mur.brique.getLongueur()/4);
        mur.afficher_mur(false);                // ouest
        translate(0,0,mur.brique.getLongueur()*mur.getTaille() - mur.brique.getLongueur()/2);
        mur.afficher_mur(false);                //est
        popMatrix();
    }

}
