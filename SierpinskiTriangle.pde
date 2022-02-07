int myColorOne = color((int)(Math.random()*74)+1, (int)(Math.random()*74)+1, (int)(Math.random()*74)+1);
int myColorTwo = color((int)(Math.random()*74)+81, (int)(Math.random()*74)+81, (int)(Math.random()*74)+81);
int myColorThree = color((int)(Math.random()*74)+161, (int)(Math.random()*74)+161, (int)(Math.random()*74)+161);

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
  myColorOne = color((int)(Math.random()*74)+161, (int)(Math.random()*74)+161, (int)(Math.random()*74)+161);
  myColorTwo = color((int)(Math.random()*74)+1, (int)(Math.random()*74)+1, (int)(Math.random()*74)+1);
  myColorThree = color((int)(Math.random()*74)+81, (int)(Math.random()*74)+81, (int)(Math.random()*74)+81);

}
public void sierpinski(float x, float y, float len) 
{
  if (len <= 20)
    triangle(x, y, x+len, y, x+len/2, y-len);

  else {
    stroke(myColorOne);
    fill(myColorOne);
 sierpinski(x,y,len/2);
    fill(myColorTwo);
    sierpinski(x+len/2,y,len/2);
    fill(myColorThree);
    sierpinski(x+len/4,y-len/2,len/2);
  }
}
