void road1(){
  stroke(116,116,116);
  strokeWeight(5);
  fill(206,242,121); //연두
  rect(200,500,400,500); //1
  rect(1000,600,1000,400); //2
  stroke(255,0,0); //빨강
  fill(255,228,0); //노랑
  rect(600,950,300,100);//3
  rect(410, 800, 70, 50); //4
  rect(1100,850,200,80); //5
  stroke(116,116,116);
  fill(206,242,121);
  rect(1200, 150, 1300, 300); //6
  circle(1800,1000,500); //7
     //클리어 구역
  fill(178,235,244);
  rect(450,670,50,100);
  fill(0,0,0);
  textSize(100);
  text("stage 1",500,500);
  fill(0,0,0);
  textSize(50);
  text("Park here!",400,670);
  
  //클리어 구현
  if (x>430 && x<470 && y>640 && y<670){
    cl1 = true;
  }
  if (cl1 == true) {
    delay(1000);
    stage1 = false;
    stage2 = true;
    x = 100;
    y = 900;
  }
 
  //충돌 구역
  for(int i=0; i<6; i++){
    //1
    if(a[i]>0 && a[i]<400 && b[i]>250 && b[i]<750){
      fill(250,0,0);
      textSize(90);
      text("accident!", 900,500);
      crash = crash+1;
    }
    //2
    else if(a[i]>500 && a[i]<1500 && b[i]>400 && b[i]<800){
      fill(250,0,0);
      textSize(90);
      text("accident!", 900,500);
      crash = crash+1;
    }
    //3
    else if(a[i]>450 && a[i]<750 && b[i]>900 && b[i]<1000){
      fill(250,0,0);
      textSize(90);
      text("accident!", 900,500);
      crash = crash+1;
    }
    //4
    else if(a[i]>375 && a[i]<450 && b[i]>775 && b[i]<825){
      fill(250,0,0);
      textSize(90);
      text("accident!", 900,500);
      crash = crash+1;
    }
    //5
    else if(a[i]>1000 && a[i]<1200 && b[i]>800 && b[i]<890){
      fill(250,0,0);
      textSize(90);
      text("accident!", 900,500);
      crash = crash+1;
    }
    //6
    else if(a[i]>550 && a[i]<1800 && b[i]>0 && b[i]<300){
      fill(250,0,0);
      textSize(90);
      text("accident!", 900,500);
      crash = crash+1;
    }
    //7
    else if ( sqrt((1800-a[i])*(1800-a[i])+(1000 - b[i])*(1000 - b[i])) < 250){
      fill(250,0,0);
      textSize(90);
      text("accident!", 900,500);
      crash = crash+1;
    }
  }
}
