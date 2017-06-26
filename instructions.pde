float x=1;
//float scale;


void setup()
{
  size(1920,940);

  frameRate(15);
  noStroke();
}
void draw()
{
  background(255);
  //fill(255, 255, 255);
  //rect(0,0, 1920, 1040);
  oceanwater(.005, -0.3);
  oceanwater(.002, 0.3);
  oceanwater(.003, 0);
  oceanwater(.001, 0.2);
  oceanwater(.004, 0.1);
}
void oceanwater(float scale,float dist) 
{
  x += scale*2;
  fill(10+(2-42)*dist, 88+(255-28)*dist, 225-(22-14)*dist, 50);
  beginShape();
  vertex(1920, 1040);
  vertex(0, 1040);
  float ds =  100-(5*(dist));
  for (float i =  0;  i <= 1920;  i+=15)
  {
float y2 =  noise(x+(i*scale), dist/100);
    vertex( i, ds-(y2*ds*2)+400);
}
  endShape();
}