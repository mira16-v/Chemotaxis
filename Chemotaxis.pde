Walker [] beeHive = new Walker[7];
void setup(){
  size(1000, 1000);
  background(255, 246, 170);
  for(int k = 0; k < beeHive.length; k++){
    beeHive[k] = new Walker();
  }
}

void draw(){
  int k = 0;
  while(k < beeHive.length){
    beeHive[k].show();
    beeHive[k].walk();
    beeHive[k].shrink();
    //beeHive[k].direction();
    k++;
    fill(((int)(Math.random()*206)+148), ((int)(Math.random()*255)+148), ((int)(Math.random())*255)+241);
   
  }
}


class Walker{
  int myX, myY, mySize;
  boolean toGrow;
  Walker(){
    myX = (int)(Math.random()*1000);
    myY = (int)(Math.random()*1000);
    mySize = 300;
    toGrow = true;
  
  }
   
 void walk() {
   myX = myX + ((int)(Math.random()*3)-1);
   myY = myY + ((int)(Math.random()*-3)+1);
 }

 void show(){
   noStroke();
   ellipse(myX, myY, mySize, mySize);
   //triangle(myX-95, myY+50, myX-95, myY-50, myX, myY);
   //triangle(myX+95, myY+50, myX+95, myY-50, myX, myY);
 }
void shrink(){
  if(dist(myX, myY, mouseX, mouseY) <= mySize/2){
    mySize = (int)(mySize*0.999);
    
  }
 }
 
}
