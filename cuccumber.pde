imgHandler cuc;
void setup(){
  size(1280,720,P3D);
   cuc = new imgHandler("cucumber2");
  
}

void draw(){

  background(225,225,225);

  cuc.update();
  cuc.updateAngel(.02);
}

class imgHandler{
 PImage img;
 PImage imgMask;
 String imgName;
 
 float xpos,ypos,xvel,yvel,tint,angel;
 imgHandler(String imgName) {
  this.imgName = imgName; 
  img = loadImage(imgName+".png");
  imgMask = loadImage(imgName+"Mask.png");
  img.mask(imgMask);
  
  xpos=width/2;
  ypos=height/2;
  xvel=0;
  yvel=0;
  angel = PI;
 }
 

 void update(){
   // xpos+= xvel;
   // ypos+= yvel;     //<>//
    imageMode(CENTER);
    pushMatrix();
    translate(xpos,ypos);
    rotateX(angel);
    rotateZ(angel);
    image(img,0,0);
    popMatrix();
 }
 //void updateXRotation()
 void updateAngel(float radians){
   angel+=radians;
 }
 void setAngel(float angel){
   this.angel=angel;
 }
 void setPos(float xpos, float ypos){
  this.xpos = xpos;
  this.ypos = ypos;
 }
