float x=0;
PImage img;
//float scale;\
Rain r1;int numDrops = 400;
Rain[] drops = new Rain[numDrops]; // Declare and create the array
void setup()
{  img = loadImage("city.jpg");
  size(1550,600);
  smooth();
  frameRate(15);
  noStroke();
  //Loop through array to create each object
  for (int i = 0; i < drops.length; i++) {

    drops[i] = new Rain(); // Create each object
    r1 = new Rain();
  }
}
void draw()
{
  background(img);
  //fill(255, 255, 255);
  //rect(0,0, 1550, 600);
  oceanwater(.005, -0.6);
  oceanwater(.002, 0.3);
  oceanwater(.003, 0);
   //Loop through array to use objects.
  for (int i = 0; i < drops.length; i++) {
    drops[i].fall();
  }
}
void oceanwater(float scale,float dist) 
{
  x += scale*6;
  fill(10+(2-42)*dist, 88+(255-28)*dist, 225-(22-14)*dist, 80);
  beginShape();
  vertex(1550, 600);
  vertex(0, 1040);
  float y =  noise(x, dist);
  float ds =  100-(5*(dist));
  for (float i =  0;  i <= 1550;  i+=15)
  {
float y2 =  noise(x+(i*scale), dist);
    vertex( i, ds-(y2*ds)-frameCount*0.3+600);
    y = y2-frameCount;
}
  endShape();
}
class Rain {
  float r = random(-100,1550);
  float y = random(-height);

  void fall() {
    y = y + 10;
    r=r+3;
   color c = get(1549,599);
   fill(c);
    ellipse(r, y, 4, 10);

   if(y>-frameCount*0.3+615){
   r = random(-150,1550);
   y = random(-200);
   }

  }
}