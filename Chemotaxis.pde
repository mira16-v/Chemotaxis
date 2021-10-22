 Walker [] beeHive = new Walker[5];
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
void mousePressed(){
//based on position of mouse, if it clicks on the cirlce then stop the loop for that circle
  }
}


class Walker{
  int myX, myY, mySize;
  boolean toGrow;
  Walker(){
	myX = (int)(Math.random()*1000);
	myY = (int)(Math.random()*1000);
	mySize = (int)(Math.random()*500);
	toGrow = true;
	//myColor = color(16, 232, 14);
	//myMouseX = 0;
	//myMouseY = 0;
    
  }
 //void direction(){
 //  myMouseX = (mouseX - myX)*3;
 //  myMouseY = (mouseY - myY)*3;
 //}
   
 void walk() {
   myX = myX + ((int)(Math.random()*3)-1);
   myY = myY + ((int)(Math.random()*-3)+1);
	//for(int i = 0; i>0; i++){
	//  if(i % 2 == 0){
	// 	myX = myX + (int)(Math.random()*5)-1;
	//  }else if (i%2 != 0) {
	//	myX = myX + (int)(Math.random()*5)-1;
	//  }
	//myY = myY + (int)(Math.random()*5)-1;
	//}
 }

 void show(){
   noStroke();
   //rect(myX, myY-10, 20, 400);
   ellipse(myX, myY, mySize, mySize);
   
 }
void shrink(){
  if(dist(myX, myY, mouseX, mouseY) <= mySize/2){
	mySize = (int)(mySize*0.999);
  }
 }
 
}


