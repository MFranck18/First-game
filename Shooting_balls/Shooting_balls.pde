int blue=#0088E0;
int a1=10;
int r1=60;
int x1=450;
int y1=700;
int Scolor=#E00000;
int Move=2;
float ballX=random(0,900);
float ballY=0;
float ballR=random(20,100);
ball[]b=new ball[1];
ball b1;

shooter[]s=new shooter[1];
shooter s1;


void setup(){
size(900,800);
s1=new shooter(a1,r1,x1,y1,Scolor,Move);
b1=new ball(random(20,100),ballX,ballY,random(20,100),Move);
}

void draw(){
  background(blue);
 s1.display();
 s1.Move();
 b1.display();
 b1.Move();
}
