public void setup()
{
  background(0);
}
public void draw()
{
  color(255);
  triangle(10, 10, 20, 10, 15, 0);
}
public void mouseDragged()//optional
{

}
public void sierpinski(float x, float y, float len) 
{
  if (len <= 20)
    triangle(x, y, x+len, y, len/2, len);
}
