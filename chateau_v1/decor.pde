PImage texture_sol;
PShape sol;
PShape sky_back, sky_bottom, sky_front, sky_left, sky_right, sky_top;
PImage texture_sky_back, texture_sky_bottom, texture_sky_front, texture_sky_left, texture_sky_right, texture_sky_top;

public void load() {
  texture_sol=loadImage("objects/sand.jpg");
  texture_sky_back=loadImage("objects/skybox/back.png");
  texture_sky_bottom=loadImage("objects/skybox/bottom.png");
  texture_sky_front=loadImage("objects/skybox/front.png");
  texture_sky_left=loadImage("objects/skybox/left.png");
  texture_sky_right=loadImage("objects/skybox/right.png");
  texture_sky_top=loadImage("objects/skybox/top.png");
  rectMode(CENTER);
  sol=createShape(RECT, 0, 0, 1000, 1000);
  sky_back=createShape(RECT, 0, 0, 1000, 1000);
  sky_bottom=createShape(RECT, 0, 0, 1000, 1000);
  sky_front=createShape(RECT, 0, 0, 1000, 1000);
  sky_left=createShape(RECT, 0, 0, 1000, 1000);
  sky_right=createShape(RECT, 0, 0, 1000, 1000);
  sky_top=createShape(RECT, 0, 0, 1000, 1000);  //
  sol.rotateX(PI/2);
  sky_back.rotateX(PI);
  sky_back.rotateY(PI);
  sky_bottom.rotateX(PI/2);
  sky_front.rotateX(PI);
  sky_left.rotateY(PI/2);
  sky_left.rotateX(PI);
  sky_right.rotateY(3*PI/2);
  sky_right.rotateX(PI);
  sky_top.rotateX(PI/2);
  sol.setTexture(texture_sol);
  sky_back.setTexture(texture_sky_back);
  sky_bottom.setTexture(texture_sky_bottom);
  sky_front.setTexture(texture_sky_front);
  sky_left.setTexture(texture_sky_left);
  sky_right.setTexture(texture_sky_right);
  sky_top.setTexture(texture_sky_top);
  
  
  
  
}

public void sol() {
  rectMode(CENTER);
  shape(sol, 0, 1.01);
  
  pushMatrix();  // ciel
  rotateX(PI);
  translate(0, -500, 0);
  shape(sky_bottom, 0, 0);
  translate(0, 1000, 0);
  shape(sky_top, 0, 0);
  translate(500, -500, 0);
  shape(sky_right, 0, 0);
  translate(-1000, 0, 0);
  shape(sky_left, 0, 0);
  translate(500, 0, 500);
  shape(sky_front, 0, 0);
  translate(0, 0, -1000);
  shape(sky_back, 0, 0);
  popMatrix();
}
