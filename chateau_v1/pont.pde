abstract public class Pont {
  private Mur mur;
  private Mur mur2;
  private int hauteur_rembarde;
  private float orientation;
  
  public float getOrientation(){
   return this.orientation; 
  }
  
  public void setOrientation(float o){
    this.orientation = o;
  }
  
  public int getHauteur_rembarde(){
     return this.hauteur_rembarde;
  }
  
  
  
  public void setHauteur_rembarde(int hr){
      this.hauteur_rembarde = hr;
  }


  public Mur getMur2() {
    return this.mur2;
  }

  public void setMur2(Mur m) {
    this.mur2 = m;
  }

  public Mur getMur() {
    return this.mur;
  }

  public void setMur(Mur m) {
    this.mur = m;
  }

  public Pont(Mur m1, Mur m2, int hr, float o) {
    this.mur = m1;
    this.mur2 = m2;
    this.hauteur_rembarde = hr + 1;
    this.orientation = o;
    getMur2().setHauteur( getMur().getHauteur() - getHauteur_rembarde() );
  }
  

  abstract public void afficher_pont();
}
