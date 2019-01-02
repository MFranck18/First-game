class ball{
float ballColor=random(250);
float ballspeed;
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
  
  
}  
}
