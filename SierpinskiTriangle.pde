public void setup()
{
noStroke();
background(250);
size (800,800);
}
public void draw()
{
sierpinski(60,740,700,200);
}
public void sierpinski(float x, float y, float len, float clr) 
{
  fill (0,clr,255-clr);
if (len<10){
  fill(140,0,0);
triangle(x+len/2,y-len,x,y,x+len,y);
}
else{
  triangle(x+len/2,y-len,x,y,x+len,y);
 sierpinski(x,y,len/2,clr*0.9);
 sierpinski(x+len/2,y,len/2,clr*0.9);
 sierpinski(x+len/4,y-len/2,len/2,clr*0.9);

}
}
