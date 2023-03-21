float x,y;
float speed; 
float rot;
float crash;
float [] a,b;
boolean left, right, increase, decrease, cl1,cl2, end;
boolean stage1 = true;
boolean stage2 = false;
PGraphics pg;


void setup() {
  size (1800, 1000);
  pg = createGraphics(width,height);
  pg.beginDraw();
  pg.endDraw();
  
  rectMode(CENTER);
  speed = 0;
  x=100;
  y=900;
  crash=0;
}
void draw() {
  background(234,234,234);
  car_detect();
   // 버스 움직임 적용
  x +=  cos(rot)*(speed);
  y +=  sin(rot)*(speed);
  
  pushMatrix();
  fill(255);
  translate(x,y); 
  rotate(rot); 
  car();
  popMatrix();  
    
  //방향조절. 전진일 때와 후진일때를 반대로
  if (left == true && speed>0) {
    rot -= 0.01;
  } 
  else if (right == true && speed>0) {
    rot += 0.01;
  } 
  else if (left == true && speed<0){
    rot += 0.01;
  }
  else if (right == true && speed<0){
    rot -= 0.01;
  }
  //속도조절. 전진과 후진 구현
  if (increase == true) { 
    speed += 0.1;
  }
  else if (decrease == true){
    speed -= 0.1;
  }
  else
  speed = 0;

  speed = constrain(speed, -2, 2); //속도제한
  
  // 맵 탈출 방지
  if(x<0 || x>1800 || y<0 || y>1000){
    x = 100;
    y = 900;
  }
  
  //장애물 구현
  if (stage1) {
    road1();
  } else if (stage2) {
    road2();
  }
  //포인트 및 게임오버 구현
  textSize(50);
  text("point:", 30,50);
  text(100-4*crash, 150, 50);
  if (4*crash>100){
    end = true;
  }
  
  if(end == true){
    background(0,0,0);
    fill(255,0,0);
    textSize(200);
    text("gameOVER", 500, 500);
    delay(2000);
  }  

}
