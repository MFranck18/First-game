class bullet{
float speedX; 
float speedY;
float r;
float life = 255;
boolean bulletVisible = false;
float x;
float y;
int shoot=2;
int bulcolor;


bullet(float tempX, float tempY, float tempSpeedX, float tempSpeedY, float tempR)
 {
   
 x = tempX;
    y = tempY;
    r = tempR;
    speedX = tempSpeedX; 
    speedY = tempSpeedY;
  
 }
 void display(){
  rect(x,y,r,r);
  fill(bulcolor);
   
  
  
  
}
void shoot(){
 
 x = x + speedX;
 y = y + speedY;
    if (x<4)
      life=-1;
    if (y<4)
      life=-1;
    if (x>width-4)
      life=-1;
    if (y>width-4)
      life=-1;
    //
    if (life==-1) {
      bulletVisible = false ;
    }
  }  
}
