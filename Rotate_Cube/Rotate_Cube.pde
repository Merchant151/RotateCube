float thetaX = 0;
float thetaY = 0;
float thetaZ = 0;
void setup(){
  size(600,600,P3D);
}

void draw()
{
 background(255);
 translate(width/2,height/2,0);
 rotateX(thetaX);
 rotateY(thetaY);
 rotateZ(thetaZ);
  drawCube(100);
  translate(150,0,0);
  drawCube(30);
 
 if(keyPressed){
  if(key == '2')
    thetaX = thetaX - 0.01;
  else if(key == '3')
    thetaX = thetaX + 0.01;
  else if(key == '4')
    thetaY = thetaY - 0.01;
  else if(key == '5')
    thetaY = thetaY + 0.01;
  else if(key == '6')
    thetaZ = thetaZ - 0.01;
  else if(key == '7')
    thetaZ = thetaZ + 0.01;
    else if (key == '1'){
      thetaX = 0;
      thetaY = 0;
      thetaZ = 0;
    }
 }
 //theta = theta + 0.01;
}

void drawCube(float t)
{
  //vetex w1 = vertex(0,0,0);
  beginShape(QUADS);
  //side 1
  fill(255,0,0);
  vertex(-t,-t,t);//y1
  vertex(t,-t,t);//z1
  vertex(t,t,t);//x1
  vertex(-t,t,t);//w1
  //side 2
  fill(255,255,0);
  vertex(-t,-t,-t);//y2
  vertex(t,-t,-t);//z2
  vertex(t,t,-t);//x2
  vertex(-t,t,-t);//w2
  //side 3
  fill(0,255,255);
  vertex(-t,t,t);//w1
  vertex(-t,t,-t);//w2
  vertex(-t,-t,-t);//y2
  vertex(-t,-t,t);//y1
  //side 4
  fill(255,0,255);
  vertex(-t,t,t);//w1
  vertex(-t,t,-t);//w2
  vertex(t,t,-t);//x2
  vertex(t,t,t);//x1
  //side 5
  fill(0,255,0);
  vertex(t,t,t);//x1
  vertex(t,t,-t);//x2
  vertex(t,-t,-t);//z2
  vertex(t,-t,t);//z1
  //side 6
  fill(0,0,255);
  vertex(t,-t,t);//z1
  vertex(t,-t,-t);//z2
  vertex(-t,-t,-t);//y2
  vertex(-t,-t,t);//y1
  
  endShape();
}
