class ball{
float ballColor=color(#D7DB00);
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
   stroke(0); 
   fill(ballColor);
 ellipse(x,y,r,r);
 }
void Move(){
  y=y+ballspeed;
 
  
  if(y>height||y<0){
    ballspeed=ballspeed*-1.2;
    x=x+random(1,5);
}
if(x>width||x<0){
    ballspeed=ballspeed*-1;
}
}
void split(){}
  


}
