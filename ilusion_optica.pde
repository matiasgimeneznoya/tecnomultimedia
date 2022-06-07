void setup(){ 
 size (500,500);
 background(255);
// strokeWeight(7);


}


void draw(){ 
 
  blendMode (REPLACE);
 
  strokeWeight(7);
 
  stroke(0);
 
  background(255);
  
  for (int m = 0; m <width*2; m=m+20) {
   line(m,0,0,m);
   }
 
 blendMode (DIFFERENCE);
 
 fill(255);
 
 noStroke();

 textSize(width*2/5);

 textAlign(CENTER,CENTER);

  for(int m = -200; m <height+200; m = m+width/int(map(mouseY, 0, height, 3, 10)))
 text("TEGNO", width/2, m);

  
  
 //noLoop();




}
