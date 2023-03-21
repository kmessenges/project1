void road2(){
  stroke(116,116,116);
  strokeWeight(5);
  fill(206,242,121); //연두
  rect(200,450,400,650); //1
  rect(650,850,225,700); //2
  rect(1200,225,1300,200); //3
  rect(1200,600,500,400);//4
  rect(1725,450,100,200);//5
  rect(1725,875,100,200);//6
  
  
     //클리어 구현
  fill(178,235,244);
  rect(1740,650,60,160);
  fill(0,0,0);
  textSize(100);
  text("stage 2",500,500);
  fill(0,0,0);
  textSize(50);
  text("Park here!",1500,670);
  for (int i=0; i<3; i++){
    if (a[i]>1700 && a[i]<1780 && b[i]>560 && b[i]<740 &&
    a[i+2]>1700 && a[i+2]<1780 && b[i+2]>560 && b[i+2]<740&&
    a[5]>1700 && a[5]<1780 && b[5]>560 && b[5]<740){
      cl2 = true;
    }
  }
  if (cl2 == true){
     //클리어 구현
    background(0,0,0);
    fill(255,255,255);
    textSize(200);
    text("gameClear", 500, 500);
    delay(1000);
  }


  for(int i=0; i<6; i++){
    //1
    if(a[i]>0 && a[i]<400 && b[i]>125 && b[i]<755){
      fill(250,0,0);
      textSize(90);
      text("accident!", 900,500);
      crash = crash+1;
    }
    //2
    else if(a[i]>535 && a[i]<760 && b[i]>500 && b[i]<1000){
      fill(250,0,0);
      textSize(90);
      text("accident!", 900,500);
      crash = crash+1;
    }
    //3
    else if(a[i]>535 && a[i]<1800 && b[i]>125 && b[i]<330){
      fill(250,0,0);
      textSize(90);
      text("accident!", 900,500);
      crash = crash+1;
    }
    //4
    else if(a[i]>950 && a[i]<1450 && b[i]>400 && b[i]<800){
      fill(250,0,0);
      textSize(90);
      text("accident!", 900,500);
      crash = crash+1;
    }
    //5
    else if(a[i]>1675 && a[i]<1775 && b[i]>350 && b[i]<550){
      fill(250,0,0);
      textSize(90);
      text("accident!", 900,500);
      crash = crash+1;
    }
    //6
    else if(a[i]>1675 && a[i]<1775 && b[i]>775 && b[i]<975){
      fill(250,0,0);
      textSize(90);
      text("accident!", 900,500);
      crash = crash+1;
    }      
  }
}
