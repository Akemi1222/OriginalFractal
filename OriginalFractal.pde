public void setup(){
  size(640,500);
  background(0);
}

public void draw(){
  myFractal(320,480,3*PI/2,80);
}

void myFractal(int x1,int y1,float angle,double len){
  int x2=x1+(int)(cos(angle)*len);
  int y2=y1+(int)(sin(angle)*len);

  strokeWeight(4);
  stroke(0,255,0);
  line(x1,y1,x2,y2);

  if(len>1){
    myFractal(x2,y2,angle-PI/6,len-8);
    myFractal(x2,y2,angle+PI/6,len-8);
  }
}
