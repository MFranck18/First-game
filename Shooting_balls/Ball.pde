class ball{
float ballColor=random(250);
float ballspeed=3;
float r;
float x;
float y;

ball(float temp_r, float temp_x, float temp_y, float temp_ballColor, int speed)
 {
   r=temp_r;
   x=temp_x;
   y=temp_y;
   ballColor=temp_ballColor;
   ballspeed=speed;  
 }
 void display(){
fill(ballColor);
 ellipse(x,y,r,r);
 }
void Move(){
  y=y+ballspeed;
  
  if(y>height||y<0){
    ballspeed=ballspeed*-1;
  }
}  
}
