class drop {

  float y=random(height-100);
  float x=random(-200, width);
  float xspeed=random(5, 10);
  float len=random(6, 25);

  void fall() {
    resetMatrix();

    x= x+xspeed;
    xspeed=xspeed+0.05;
    if (x>width)
    {
      x=random(-200, -100);
      xspeed=random(4, 10);
    }
  }
  void show() {
    stroke(0,119,190);
    strokeWeight(1);
    line(x, y, x+len, y );
  }
}
