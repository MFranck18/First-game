class shooter{
int bodyA=450;
int bodyB=400;
int bodyC=40;
int bodyD=30;

float x;
float y;
int r;
int Scolor;
int Move;
int b;

 shooter(int temp_b, int temp_r, float temp_x, float temp_y, int temp_Scolor, int speed)
 {
   b=temp_b;
   r=temp_r;
   x=temp_x;
   y=temp_y;
   Scolor=temp_Scolor;
   Move=speed;
 }

void display(){
fill(Scolor);
rect(x,y,r,r,r);
fill(Scolor*3);
rect(x+25,y,b,r);
}

void Move(){
  x=x+Move;
  if(x>width||x<0){
Move=Move*-1;}
  }

 void keyPressed(){
    if(key=='a'||key=='A')
 x=x-50;

  else if(key=='d'||key=='D')
 x=x+10; 

 }
}
