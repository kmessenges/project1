float x,y,z;
void setup(){
  size(700,700);
  x=350;
  y=350;
  z=50;
  background(47,79,79);
  body();
  leg();
  head();
  handtail();
  amaze();
}

void body(){
  strokeWeight(10);
  fill(178,34,34);
  arc(x,y-100,6*z,6*z,PI,2*PI);
  strokeWeight(1);
  stroke(178,34,34);
  rect(x-150,y-100,300,y-100);
  strokeWeight(10);
  stroke(0,0,0);
  line(x-150,y-100,x-150,y+150);
  line(x+150,y-100,x+150,y+150);
}
void leg(){
  float p,q;
  stroke(178,34,34);
  rect(x-150,y+150,2.5*z,2*z);
  rect(x+150-2.5*z,y+150,2.5*z,2*z);
  stroke(0,0,0);
  p=y+150+2*z;
  q=x+150-2.5*z;
  line(x-150,y+150,x-150,p);
  line(x+150,y+150,x+150,p);
  line(x-150,p,x-150+2.5*z,p);
  line(x+150,p,q,p);
  line(x-150+2.5*z,p,x-150+2.5*z,y+150);
  line(q,p,q,y+150);
  line(x-150+2*z,y+150,x+150-2*z,y+150);
}
void head(){
  strokeWeight(10);
  fill(178,34,34); //빨간색//
  arc(x,y-100,6*z,6*z,PI,2*PI);
  fill(135,206,235);
  ellipse(x,y-100,4*z, 3*z);
  fill(224,255,255);
  ellipse(x-30,y-120,1.8*z,z);
}
void handtail(){
  fill(178,34,34);
  rect(x-200, y+50,z,3*z);
  circle(x+150+0.5*z,y+50+2*z,z);
}
void amaze(){
  strokeWeight(10);
 fill(0);
 rect(x+200,y-300,10,100);
 circle(x+200+5,y-150,10);
}
 
