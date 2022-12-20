public class brique {
    private float longueur;
    private float hauteur;
    public brique (float l, float h) {
        this.longueur = l;
        this.hauteur = h;
    }

    public float getLongueur(){
        return this.longueur;
    }
    public void setLongueur(float l){
        this.longueur = l;
    } 
    public float getHauteur(){
        return this.hauteur;
    }
    public void setHauteur(float h){
        this.hauteur = h;
    } 

    public void afficher_brique(){
        box(getLongueur(),getHauteur(),getLongueur()/2);
    }

}
