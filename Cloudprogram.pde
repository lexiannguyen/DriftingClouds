class Cloud {
   int myX, myY, mySpeed, myOpacity, myColor, myHeight, myWidth;
   Cloud(){
    myX = (int)(Math.random()*20)-10;
    myY = (int)(Math.random()*100);
    mySpeed = (int)(Math.random()*6)+1;
    myOpacity = (int)(Math.random()*100);
    myColor = color(255, 255, 255);
    myHeight = (int)(Math.random()*50) + 50;
    myWidth = (int)(Math.random()*150)+100;
   }
   void move(){
     myX += mySpeed;
     if(myX >= 450){
       myX = -150;
     }
   }
   void show(){
    noStroke();
    fill(myColor, myOpacity);
    ellipse(myX, myY, myWidth, myHeight);
   }
  
}
class StormCloud extends Cloud{
 StormCloud(){
   myX = (int)(Math.random()*20)-10;
    myY = (int)(Math.random()*100);
    mySpeed = (int)(Math.random()*6)+1;
    myOpacity = (int)(Math.random()*60)+100;
    myColor = color(133, 146, 148);
    myHeight = (int)(Math.random()*50) + 50;
    myWidth = (int)(Math.random()*150)+100;
  
}
}
Cloud[] clouds = new Cloud[18];
void setup(){
  size(400, 400);
  for(int i = 0; i<10; i++){
    clouds[i] = new StormCloud();
  }
  for(int i = 10; i<clouds.length; i++){
   clouds[i] = new Cloud(); 
  }
}
Cloud bob = new Cloud();


void draw(){
  //BACKGROUND
 background(117, 211, 235);
 fill(104, 179, 140);
 rect(0, 300, 400, 100);
 //SHEEP
 fill(46, 27, 3);
 ellipse(230, 255, 50, 30);
 rect(170, 250, 6, 60);
 rect(220, 250, 6, 60);
 
 fill(255);
 ellipse(200, 250, 50, 50);
 ellipse(200, 270, 50, 50);
 ellipse(180, 260, 50, 50);
 ellipse(220, 260, 50, 50);
 ellipse(155, 260, 10, 10);
 
 
 //CLOUDS
 
 for(int i = 0; i<clouds.length; i++){
   clouds[i].move();
   clouds[i].show();
  }
 bob.move();
 bob.show();
 
}
