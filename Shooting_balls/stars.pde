class star{
float x1=30;
 float r2=40;
float y=0;  
float x=0;
int starcolor;
int xspeed=5;
int yspeed=5;
int bounce;

 star(float temp_x, float temp_y, int temp_starcolor, int speed){
  
    x = temp_x;
    y = temp_y;
    starcolor = temp_starcolor;
    bounce=speed;
 }
 
void display(){
  fill(starcolor);
  stroke(244);
  beginShape();
 vertex(x,y-40);
 vertex(x+24,y-10);
 vertex(x+57,y-5);
 vertex(x+33,y+17);
 vertex(x+39,y+50);
  }
void bounce(){
   x=x+xspeed;
   if(x>width||x<0){
xspeed=xspeed*-1;
}
  y=y+yspeed;
  if(y>height||y<0){
    yspeed=yspeed*-1;
  }
}}
