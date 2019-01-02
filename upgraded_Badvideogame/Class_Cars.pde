class car{
float x;
float y;
float xspeed;
float yspeed;
int r;
int Carcolor;
int Carmove;
  
  
  
 car(int temp_r, float temp_x, float temp_y, int temp_Carcolor, int speed)
 {
   r=temp_r;
   x=temp_x;
   y=temp_y;
   Carcolor=temp_Carcolor;
   Carmove=speed;
 }  
void Carmove(){
  x=x+xspeed;
   if(x>width||x<0){
xspeed=xspeed*-1;
}
  y=y+yspeed;
  if(y>height||y<0){
    yspeed=yspeed*-1;
  }
}
void display(){
fill(Carcolor);
rect(x,y,r,r);
}
void reset(){
  if(dist(circleA, circleB, r, r) < 50){
score=score-1;
  circleA=circleA-x;
}
   
}   
}
