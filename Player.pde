class Player{
   PVector pos; 
   PVector vel; 
   float size; 
   
   Player(float x, float y, float s){
      pos = new PVector(x, y);
      vel = new PVector(0, 0); 
      size = s; 
   }
   
   void draw(){
      fill(0, 255, 0); 
      circle(pos.x, pos.y, size); 
   }
   
   void update(){
     vel.y = vel.y + 0.1; 
      pos.add( vel );  
      
      if( pos.y + size/2 > height){
         pos.y = height - size/2; 
         vel.y = 0; 
      } 
      if(pos.y + size/2 > p.pos.y && pos.y - size/2 < p.pos.y + p.size.y &&
         pos.x + size/2 > p.pos.x && pos.x - size/2 < p.pos.x + p.size.x){
           
           if( pos.x + size/4 > p.pos.x  && pos.x - size/4 < p.pos.x + p.size.x ){ // not hitting side
             if(vel.y > 0) { // going down
               pos.y = p.pos.y - size/2; 
               vel.y = 0; 
             }
             else { // going up
               vel.y =  -vel.y; 
             }
           }
           else { // hitting side
               vel.x =  -vel.x;
           }
      }
   }
   
}
