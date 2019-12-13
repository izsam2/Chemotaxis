Bacteria [] colony;
 void setup()   
 {     
   size(500,500);
   background(0);
   colony = new Bacteria[50];
   for(int i=0; i<colony.length; i++){
     colony[i] = new Bacteria();
     
   }
 }   
 void draw()   
 {    
   fill(255);
   for(int i=0; i<colony.length; i++){
   colony[i].move();
   colony[i].show();
   }
 }  
 class Bacteria    
 {     
    int myX, myY, myColor;
    void move()
    {
      myX = myX + (int)(Math.random()*7)-3;
      myY = myY + (int)(Math.random()*7)-3;
    }
    void show()
    {
      fill((int)(Math.random()*255)+1);
      ellipse(250+myX,250+myY,30,30);
    }
 }
