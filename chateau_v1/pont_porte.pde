public class Pont_porte extends Pont{
  private Mur_porte mur_porte;
  
  public Pont_porte(Mur_porte mp, Mur_base mb, int hr, float o){
    super(mp,mb,hr, o);
    this.mur_porte = mp;
    getMur2().SetNombre_creneaux(0);
    if (getMurPorte().getPorte_hauteur() > getMurPorte().getHauteur() - getHauteur_rembarde() - 1){
      getMurPorte().setPorte_hauteur(getMurPorte().getHauteur() - getHauteur_rembarde() -1);
    }
  }
  public Mur_porte getMurPorte(){
  return this.mur_porte;
  }
  
  public void remplir_pont(){
   pushMatrix();
   rotateY(PI/2);
   translate(  getMur2().brique.getLongueur()*3/4 - getMur2().getBrique().getLongueur() * (getMur2().getTaille()+.5) ,0 ,  (getMur2().brique.getLongueur()/4 ) + (getMurPorte().getTaille()/2 - getMurPorte().getPorte_longueur()/2 -1)  * getMurPorte().getBrique().getLongueur() );
    getMur2().afficher_mur(false);            // ouest
   popMatrix();
   pushMatrix();
   rotateY(PI/2);
    //translate(0,0,(getMurPorte().getPorte_longueur() +.5) * getMurPorte().getBrique().getLongueur()) ;
    translate(  getMur2().brique.getLongueur()*3/4 - getMur2().getBrique().getLongueur() * (getMur2().getTaille()+.5) ,0 ,  (getMur2().brique.getLongueur()/4 ) + (getMurPorte().getTaille()/2 + getMurPorte().getPorte_longueur()/2 -.5)  * getMurPorte().getBrique().getLongueur() );
    getMur2().afficher_mur(false);            // est
   popMatrix();
   pushMatrix();
   rotateX(PI/2);
   rotateZ(PI/2);
   translate(getMur2().getBrique().getLongueur()*3/4, getMurPorte().getBrique().getLongueur()/4 - getMurPorte().getBrique().getLongueur() * getMurPorte().getTaille()/2 + getMurPorte().getPorte_longueur()/2 * getMurPorte().getBrique().getLongueur(), getMurPorte().getPorte_hauteur() * getMurPorte().getBrique().getHauteur());
   Mur_base mb = new Mur_base( getMur2().getTaille(), getMurPorte().getPorte_longueur()*2, getMur2().getBrique(), getMur2().getNombre_creneaux());
   //getMur2().afficher_mur(false);
   mb.afficher_mur(false);
   popMatrix();
  }
  
  
  public void afficher_pont(){
    rotateY(getOrientation());
    remplir_pont();
    pushMatrix();                  // nouvelle construction
    getMur().afficher_mur(true);            // sud
    translate(0, 0, getMur2().brique.getLongueur() * getMur2().getTaille() + getMur2().brique.getLongueur()/2);
    getMur().afficher_mur(true);             // nord
    popMatrix();
    pushMatrix();
    translate(getMur().getBrique().getLongueur() * getMur().getTaille()/2 -  getMur().getBrique().getLongueur()/2, - ( getMur().getHauteur() - getHauteur_rembarde() ) * (getMur().getBrique().getHauteur()) , getMur2().getBrique().getLongueur() * getMur2().getTaille()/2 + getMur().brique.getLongueur()/4);
    fill(255,0,0);
    box(getMur().getBrique().getLongueur() * ( getMur().getTaille() ) , getMur().getBrique().getHauteur() , getMur2().getBrique().getLongueur() * ( getMur2().getTaille()  ) );
    noFill();
    popMatrix();
  } 
  }
  
