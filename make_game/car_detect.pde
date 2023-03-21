void car_detect(){
   //충돌 감지를 위한 포인트 좌표 계산
   a= new float[6];
   b= new float[6];
   a[0] = x+sqrt(25*25+75*75)*cos(rot+atan(0.33));
   b[0] = y+sqrt(25*25+75*75)*sin(rot+atan(0.33));
   a[1] = x+sqrt(25*25+75*75)*cos(rot+PI-atan(0.33));
   b[1] = y+sqrt(25*25+75*75)*sin(rot+PI-atan(0.33));
   a[2] = x+sqrt(25*25+75*75)*cos(rot+PI+atan(0.33));
   b[2] = y+sqrt(25*25+75*75)*sin(rot+PI+atan(0.33));
   a[3] = x+sqrt(25*25+75*75)*cos(rot+2*PI-atan(0.33));
   b[3] = y+sqrt(25*25+75*75)*sin(rot+2*PI-atan(0.33));
   a[4] = x+25*cos(rot+PI/2);
   b[4] = y+25*sin(rot+PI/2);
   a[5] = x+25*cos(rot+3*PI/2);
   b[5] = y+25*sin(rot+3*PI/2);
}
