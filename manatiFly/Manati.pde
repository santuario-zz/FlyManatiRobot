class Manati {
  
  // Properties
  
  float w,h;
  float flapSpeed = 0.4;
  int bodyFill;
  int finFill;
  float ang = 0;
  
  // Constructor
  
  Manati(){
   this(60,80); 
  }
  
  Manati(float w, float h){
    
    this.h = h;
    this.w = w;
    bodyFill = color(153);
    finFill = color(204);
  }
  
  
   // Manati's methods
  
  void setFinSpeed(float flapSpeed){
    this.flapSpeed = flapSpeed;
  }
  
  
  void swim(){
    
    pushMatrix();
    
    // Reference
    pushMatrix();    
    translate(-30,0);
    fill(255,0,0);
    box(30);
    popMatrix();
    
    
    // Left Fin
    fill(finFill);
    pushMatrix();
    //rotateX(sin(radians(ang)) * 0.5);
    rotateY(sin(radians(ang)) * 1.5);
    rect(0, -h/2, w, h);
    box(20);
    popMatrix();
    

      
    // Wing flap
    ang += flapSpeed;
    if (ang > 3) {
       flapSpeed*=-1;
      }
    if (ang < -3) {
       flapSpeed*=-1;
      }
      
      
      
    
    popMatrix();
  }
  
  
 
  
  
}
