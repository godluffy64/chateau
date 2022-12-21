public class tour {
    private mur mur;

    public tour(mur m){
        this.mur = m;
    }
    public void afficher_tour(){
        pushMatrix();
        mur.afficher_mur(true);                 // sud
        translate(0,0, - mur.brique.getLongueur()*mur.getTaille() );
        popMatrix();

        pushMatrix();
        rotateY(PI/2);
        translate(mur.brique.getLongueur()*3/4,0, - mur.brique.getLongueur()/4);
        mur.afficher_mur(false);                // ouest
        popMatrix();

        pushMatrix();
        translate(0,0,-(mur.brique.getLongueur()*mur.getTaille()));
        mur.afficher_mur(true);                 // nord
        
        popMatrix();

        pushMatrix();
        rotateY(PI/2);
        
        translate(mur.brique.getLongueur()/4,0,mur.brique.getLongueur()*mur.getTaille() - mur.brique.getLongueur()*3/4);
        mur.afficher_mur(false);                //est
        popMatrix();
        //translate(mur.brique.getLongueur()*mur.getTaille()/2,-(mur.brique.getHauteur()*(mur.getHauteur()-mur.getNombre_creneaux()-1)),-mur.brique.getLongueur()*mur.getTaille()/2);
        //box(mur.brique.getLongueur()*mur.getTaille() + mur.brique.getLongueur()/4,mur.brique.getHauteur(),mur.brique.getLongueur()*mur.getTaille() - mur.brique.getLongueur()/4);
    }
}
