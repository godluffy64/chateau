public class brique {
    private float longueur;
    private float hauteur;
    private color couleur;
    public brique (float l, float h, color c) {
        this.longueur = l;
        this.hauteur = h;
        this.couleur = c;
        fill(c);
    }
    public color getCouleur(){
        return this.couleur;
    }
    public void setCouleur(color c){
        this.couleur = c;
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

    public void afficher_demi_brique(){
        box(getLongueur()/2,getHauteur(),getLongueur()/2);
    }

}
