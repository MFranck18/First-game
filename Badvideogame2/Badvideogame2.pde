int circleA=50;
int circleB=35;
int circleC=20;
int circleD=20;
int speed=2;
int speed2=5;
int rectX=300;
int rectY=200;
int rectW=70;
int rectH=60;
int speed1=3;
int rectA=200;
int rectB=250;
int rectC=50;
int rectD=60;
int rectM=400;
int rectL=100;
int rectN=60;
int rectO=50;
int line1=580;
int line2=20;
float display_lw=40; //length and width of the fields for displaying game data/results
float field1;

int score=0;

void setup(){
 size(600,400); 
 width=600;
 height=400;

field1=width-display_lw;
}
void draw(){
  background(22,45,45);
  fill(50,50,50);
  ellipse(circleA,circleB,circleC,circleD);
  line(field1,0,field1,height);
//i want a scoreboard
textSize(40);
textAlign (CENTER);  
 
 fill(200,0,100);
     rect(field1,height-display_lw,display_lw,display_lw);
     fill(0);
     text(score, field1+display_lw/2,height); 




 //i want the mouse to begin the game  
   if(mouseX>0){
      circleA=circleA+2;
   }//i want the circle to respawn at the beginning
   if(circleA>width){
     circleA=circleA-600;
   }
   if(circleA>598){
    score=score+1;
   }
  
stroke(200);

line(400,0,400,height);
line(20,0,20,height);
line(300,0,300,height);
 //i want the mouse to boost the ball
if((mouseX>circleA)&&(mouseX<circleA+circleB)||((mouseY>circleB)&&(mouseY<circleD))){
  circleA=circleA+2;
  
}

//I want multiple moving cars
rect(rectX,rectY,rectW,rectH);
fill(255,100,0);
rectY=rectY+speed;
if (rectY>height||(rectY<0)){
  speed=speed*-1;}
  
rect(rectA,rectB,rectC,rectD);
fill(255,100,0);
rectB=rectB+speed1;
if(rectB>height||(rectB<0)){
  speed1=speed1*-1;
}
fill(#B202A1);
rect(rectM,rectL,rectN,rectO);

rectL=rectL+speed2;
if(rectL>height||(rectL<0)){
  speed2=speed2*-1;
}

 //I want to reset the circle if it hits the car
  if(dist(circleA, circleB, rectX, rectY) < 50){
score=score-1;
  circleA=circleA-300;
}
if(dist(circleA, circleB, rectA, rectB) < 40){
score=score-1;
  circleA=circleA-200;
}
if(dist(circleA, circleB, rectM, rectL) < 40){
score=score-1;
  circleA=circleA-400;
}

}//I want an up and down key
void keyPressed(){
  if(key=='s'||key=='S')
  circleB=circleB+15;


  else if(key=='w'||key=='W')
  circleB=circleB-15;
  
  else if(key=='d')
  circleB=circleB+speed2;
}
