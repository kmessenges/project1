void car(){
  float [] l;
  //바퀴
  strokeWeight(1); 
  fill(0,0,0);
  rect(50,25,20,10);
  rect(50,-25,20,10);
  rect(-50,25,20,10);
  rect(-50,-25,20,10);
  //라이트
  fill(242,203,97);
  circle(75,15,10);
  circle(75,-15,10); 
  //본체
  fill(80, 175, 73);
  strokeWeight(2);
  rect(0, 0, 150, 50);
  //뚜껑
  strokeWeight(4);
  fill(44,139,37);
  rect(40,0,50,30); 
  fill(189,189,189);
  strokeWeight(1);
  rect(-30,0,60,25);
  fill(81,81,81);
  l= new float [4];
  l[0]=-20;
  for(int i=0; i<3; i++){
    l[i+1]=l[i]-13;
    circle(l[i], 0, 10);
  }
}
