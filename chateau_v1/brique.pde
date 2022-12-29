public class Brique {
  private float longueur;
  private float hauteur;
  private color couleur;
  public Brique (float l, float h, color c) {
    this.longueur = l;
    this.hauteur = h;
    this.couleur = c;
  }
  public color getCouleur() {
    return this.couleur;
  }
  public void setCouleur(color c) {
    this.couleur = c;
  } 

  public float getLongueur() {
    return this.longueur;
  }
  public void setLongueur(float l) {
    this.longueur = l;
  } 
  public float getHauteur() {
    return this.hauteur;
  }
  public void setHauteur(float h) {
    this.hauteur = h;
  } 

  public void afficher_brique() {
    fill(getCouleur());
    //setCouleur(color(random(0,255),random(0,255),random(0,255)));
    box(getLongueur(), getHauteur(), getLongueur()/2);
    noFill();
  }

  public void afficher_demi_brique() {
    fill(getCouleur());
    //setCouleur(color(random(0,255),random(0,255),random(0,255)));
    box(getLongueur()/2, getHauteur(), getLongueur()/2);
    noFill();
  }

  public void afficher_trois_quart_brique() {
    box(getLongueur()*3/4, getHauteur(), getLongueur()/2);
  }
}
