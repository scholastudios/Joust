class Platform {
   PVector pos; 
   PVector size; 
   PImage img; 
   
   Platform(float x, float y, float w, float h){
      pos = new PVector(x, y);  
      size = new PVector(w, h);
      //img = loadImage("name.png");
   }
   
   void draw(){
      fill(0, 0, 0); 
      rect( pos.x, pos.y, size.x, size.y); 
   }
  
  //....
}
