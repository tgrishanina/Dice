void setup()
{
  size(300, 300);
  noLoop();
}
void draw()
{
  int total = 0;
  background(255);
  fill(255);
  for (int i = 0; i <=260; i+=20)
  {
    for (int j = 0; j<=300; j+=20) 
    {
      strokeWeight(1);
      Die bob = new Die(j, i);
      bob.show();
      total = total + bob.myNum;
    }
  }
  stroke(0);
  text("Total:"+total, 20, 295);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY, myNum;
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    roll();
  }
  void roll()
  {
    myNum = ((int)(Math.random()*6)+1);
  }
  void show()
  { 
    if ((myNum==1)) {
      fill(255, 60, 30);
      rect(myX, myY, 20, 20, 5);
      strokeWeight(3);
      point(myX+10, myY+10);
      System.out.println(1);
    };
    if ((myNum==2)) {
      fill(10, 255, 50);
      rect(myX, myY, 20, 20, 5);
      strokeWeight(3);
      point(myX+5, myY+10);
      point(myX+15, myY+10);
      System.out.println(2);
    };
    if ((myNum==3)) {
      strokeWeight(3);
      fill(20, 35, 255);
      rect(myX, myY, 20, 20, 5);
      point(myX+5, myY+10);
      point(myX+10, myY+10);
      point(myX+15, myY+10);
      System.out.println(3);
    };
    if ((myNum==4)) {
      strokeWeight(3);
      fill(170, 50, 50);
      rect(myX, myY, 20, 20, 5);
      point(myX+5, myY+5);
      point(myX+15, myY+5);
      point(myX+5, myY+15);
      point(myX+15, myY+15);
      System.out.println(4);
    };
    if ((myNum==5)) {
      strokeWeight(3);
      fill(150, 55, 150);
      rect(myX, myY, 20, 20, 5);
      point(myX+5, myY+5);
      point(myX+15, myY+5);
      point(myX+5, myY+15);
      point(myX+15, myY+15);
      point(myX+10, myY+10);
      System.out.println(5);
    };
    if ((myNum==6)) {
      fill(30, 150, 150);
      strokeWeight(3);
      rect(myX, myY, 20, 20, 5);
      point(myX+5, myY+5);
      point(myX+15, myY+5);
      point(myX+5, myY+15);
      point(myX+15, myY+15);
      point(myX+5, myY+10);
      point(myX+15, myY+10);
      System.out.println(6);
    };
  }
}