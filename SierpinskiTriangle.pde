public void setup()
{
  size(400,400);
  background(0);
}
public void draw()
{
  sierpinski(10, 390, 380);
}
public void mousePressed()//optional
{
  sierpinski(100, 200, 190);             ////////here
}
public void sierpinski(float x, float y, float len) 
{
  if (len <= 20)
    triangle(x, y, x+len, y, x+len/2, y-len);

  else {
    stroke(40, 191, 73);
    fill(31, 33, 135);
 sierpinski(x,y,len/2);
    fill(0, 227, 247);
    sierpinski(x+len/2,y,len/2);
    fill(110, 255, 161);
    sierpinski(x+len/4,y-len/2,len/2);
  }
}
