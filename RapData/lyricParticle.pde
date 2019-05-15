class lyricParticle{
    float x, y;
    boolean colr;
    double speed = 1;
    double angle;
    
    lyricParticle(){
      x = random(0, width);
      y = random(0, height);
      angle = Math.random()*Math.PI*2;
      
    }
    
    lyricParticle(boolean clr){
      x = random(0, width);
      y = random(0, height);
      angle = Math.random()*Math.PI*2;
      colr = clr;
      
    }
    
    void move(){
     x += angle * speed;
     y += angle * speed;
      
      if(x<0||X>755){
        speed = -speed;
      }
      if(y<0||y>500){
        speed = - speed;
      }
    }
    
    void show(){
      noStroke();
      if(colr==true){
        fill(255,0,0);
      }
      if(colr!=true){
        fill(0);
      }
      ellipse((float)x,(float) y, 8, 8);
    }
    
 
  
  
}
