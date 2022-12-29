public class Chateau {
  private java.util.ArrayList<Mur> murs;
  private java.util.ArrayList<Tour> tours;
  private java.util.ArrayList<Pont> ponts;
  private java.util.ArrayList<java.util.ArrayList<PVector>> murs_coord;
  private java.util.ArrayList<java.util.ArrayList<PVector>> tours_coord;
  private java.util.ArrayList<java.util.ArrayList<PVector>> ponts_coord;

  public java.util.ArrayList<Mur> getMurs() {
    return this.murs;
  }

  public java.util.ArrayList<Tour> getTours() {
    return this.tours;
  }

  public java.util.ArrayList<Pont> getPonts() {
    return this.ponts;
  }

  public java.util.ArrayList<java.util.ArrayList<PVector>> getMurs_coord() {
    return this.murs_coord;
  }

  public java.util.ArrayList<java.util.ArrayList<PVector>> getTours_coord() {
    return this.tours_coord;
  }

  public java.util.ArrayList<java.util.ArrayList<PVector>> getPonts_coord() {
    return this.ponts_coord;
  }

  public Chateau() {                                                                      // constructeur
    this.murs = new java.util.ArrayList<>();
    this.tours = new java.util.ArrayList<>();
    this.ponts = new java.util.ArrayList<>();
    this.murs_coord = new java.util.ArrayList<>();
    this.tours_coord = new java.util.ArrayList<>();
    this.ponts_coord = new java.util.ArrayList<>();
  }

  public void ajouterMur(Mur m) {                                                                      // structures
    getMurs().add(m);
  }
  
  public void ajouterTour(Tour t) {
    getTours().add(t);
  }
  
  public void ajouterPont(Pont p) {
    getPonts().add(p);
  }

  public void ajouterCoordMur(Mur m, PVector cm){                                                      // Coordonnées
    //println(getTours().indexOf(t));
    if ( getMurs().indexOf(m) >= getMurs_coord().size()){
      getMurs_coord().add(new java.util.ArrayList<PVector>());
    }
    getMurs_coord().get(getMurs().indexOf(m)).add(cm);
  }

  
  
  public void ajouterCoordTour(Tour t, PVector ct){
    //println(getTours().indexOf(t));
    if ( getTours().indexOf(t) >= getTours_coord().size()){
      getTours_coord().add(new java.util.ArrayList<PVector>());
    }
    getTours_coord().get(getTours().indexOf(t)).add(ct);
  }

  
  
  public void ajouterCoordPont(Pont p, PVector cp){
    //println(getTours().indexOf(t));
    if ( getPonts().indexOf(p) >= getPonts_coord().size()){
      getPonts_coord().add(new java.util.ArrayList<PVector>());
    }
    getPonts_coord().get(getPonts().indexOf(p)).add(cp);
  } 

  public void retirerMur(Mur m) {                                                            // enlever structure
    int position = getMurs().indexOf(m);
    getMurs().remove(m);
    getMurs_coord().remove(position);
  }

  public void retirerTour(Tour t) {
    int position = getTours().indexOf(t);
    getTours().remove(t);
    getTours_coord().remove(position);
  }

  public void retirerPont(Pont p) {
    int position = getPonts().indexOf(p);
    getPonts().remove(p);
    getPonts_coord().remove(position);
  }

  public void afficherMurs() {                                                                      
    //println(this);
    println("Liste de tous les murs : ");
    for (int i = 0; i < getMurs().size(); i++) {
      println(" Mur "+i+" :\n  -longueur : "+ getMurs().get(i).getTaille());
    }
  }

  public void afficherTours() {
    println("Liste de toutes les tours : ");
    for (int i = 0; i < getTours().size(); i++) {
      println(" Tour "+i+" :\n  -longueur : "+ getTours().get(i).getMur().getTaille());
    }
  }

  public void afficherPonts() {

    println("Liste de toutes les tours : ");
    for (int i = 0; i < getPonts().size(); i++) {
      println(" Tour "+i+" :\n  -longueur : "+ getPonts().get(i).getMur().getTaille());
    }
  }
  
  public void afficher_mur(Mur m,int indice){                                                                    // afficher structures
    int position = getMurs().indexOf(m);
    pushMatrix();
    translate( getMurs_coord().get(getMurs().indexOf(m)).get(indice).x,0,getMurs_coord().get(getMurs().indexOf(m)).get(indice).y);
    
    //translate(getTours_coord().get(indice).x, 0, getTours_coord().get(indice).y);
    getMurs().get(position).afficher_mur(true);
    
    popMatrix();
  }
  
  public void afficher_tour(Tour t,int indice){
    int position = getTours().indexOf(t);
    pushMatrix();
    translate( getTours_coord().get(getTours().indexOf(t)).get(indice).x,0,getTours_coord().get(getTours().indexOf(t)).get(indice).y);
    
    //translate(getTours_coord().get(indice).x, 0, getTours_coord().get(indice).y);
    getTours().get(position).afficher_tour();
    
    popMatrix();
  }
  
  public void afficher_pont(Pont p,int indice){
    int position = getPonts().indexOf(p);
    pushMatrix();
    translate( getPonts_coord().get(getPonts().indexOf(p)).get(indice).x,0,getPonts_coord().get(getPonts().indexOf(p)).get(indice).y);
    
    //translate(getTours_coord().get(indice).x, 0, getTours_coord().get(indice).y);
    getPonts().get(position).afficher_pont();
    
    popMatrix();
  }

  public void afficher_chateau() {                                                    // afficher chateau
    for (int i = 0; i <  getMurs().size(); i++) {
      for(int j = 0; j < getMurs_coord().get(i).size(); j++){
         afficher_mur(getMurs().get(i),j);
      }
    }
    
    for (int i = 0; i <  getTours().size(); i++) {
      for(int j = 0; j < getTours_coord().get(i).size(); j++){
         afficher_tour(getTours().get(i),j);
      }
    }
    
    for (int i = 0; i <  getPonts().size(); i++) {
      for(int j = 0; j < getPonts_coord().get(i).size(); j++){
         afficher_pont(getPonts().get(i),j);
      }
    }
  }
}
