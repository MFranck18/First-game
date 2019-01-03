int blue=#0088E0;
int a1=10;
int r1=60;
int r2=20;
int x1=450;
int x2=250;
int y1=700;
int y2=400;
int r=10;
int Scolor=#E00000;
int ballColor=#D7DB00;
int bulcolor=#FCFCFA;
int Move=3;
int starcolor=#FAFF12;
int score=0;
float ballX=random(0,900);
float ballY=0;
float ballR=random(20,100);
float display1=60;
float board;
boolean shoot=false;
ball[]b=new ball[20];
ball b1;
star[]st=new star[1];
star st1;
shooter[]s=new shooter[1];
shooter s1;
bullet[]bul=new bullet[1];
bullet bul1;


void setup(){
size(900,800);
s1=new shooter(a1,r1,x1,y1,Scolor,Move);
b1=new ball(random(20,100),ballX,ballY,ballColor,Move);
st1=new star(30,30,starcolor,Move);
bul1=new bullet(r2,x1,y2,bulcolor,Move*2);
for(int i=0; i<b.length;i++){
  b[i]=new ball(i*3,i*2,ballY,ballColor,Move);
}
}

void draw(){
  background(blue);
 s1.display();
 s1.Move();
 b1.display();
 b1.Move();
 st1.display();
 st1.bounce();
 bul1.display();
 bul1.shoot();
 for(int i=0;i<b.length;i++){
b[i].display();
b[i].Move();
 }
textSize(50);
textAlign (CENTER); 
fill(200,0,100);
     rect(board,height-display1,display1,display1);
     fill(1);
     text(score, board+display1/2,height); 



float d = dist(s1.x,s1.y,b1.x,b1.y); //If the object of the ball and the shooter overlap, you should lose a point
if(d<s1.r+b1.r){
  background(255,0,0);
  b1.y=0;
  s1.x=1;
  textSize(100);
  text("YOU LOSE",x2,y2);
  score=score-1;

if(mousePressed)
{
background(255);

}

  
  //score=-1;
//if(dist(ballX, ballY, x1, y1) < 100){
  //b2=new ball(random(20,100),ballX,ballY,ballColor,Move);
}
s1.x=mouseX;  
}
