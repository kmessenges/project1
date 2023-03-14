float x,y,z;
boolean left, right, up, down,lie,jump;
void setup(){
  size(2000,1500);
  translate(width/2, height/2);
  x=0;
  y=0;
}
void draw(){
  translate(width/2, height/2);
  background(120);
  gk();
  if(left == true) x-=3;
  if(right == true) x+=3;
  if(up == true) y-=3;
  if(down == true) y+=3;
  if(lie== true){
    background(120);
    rotate(-PI/2);
    gk();
  }
  if(jump == true){
    background(120);
    rotate(PI/2);
    gk();
  }    
}
void keyPressed(){
  if(key == 'a') left = true;
  if(key == 'd') right = true;
  if(key == 'w') up = true;
  if(key == 's') down = true;
  if(key == 'l') lie = true;
  if(key == 'j') jump= true;
}

void keyReleased(){
  if(key == 'a') left = false;
  if(key == 'd') right = false;
  if(key == 'w') up = false;
  if(key == 's') down = false;
  if(key == 'l') lie = false;
  if(key == 'j') jump = false;
}
  
void gk(){
  rect(x-50,y-150,100,300);
  circle(x-30,y-120,30);
  circle(x+30,y-120,30);
}
