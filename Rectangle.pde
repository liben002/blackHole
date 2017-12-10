public class Rectangle extends Shape implements Movable {
  private int w,h;
  private int d;
  public Rectangle(int x,int y,int w,int h,int d) {
    super(x,y);
    this.w = w;
    this.h = h;
    this.d = d;
  }
  public int getWidth() {
    return w;
  }
  public int getHeight() {
    return h;
  }
  public void move() {
    if (d == 0) {
      super.x += xspeed*xdirection;
    }
    else {
      super.y += yspeed*ydirection;
    }
  }
  public void display() {
    rectMode(CENTER);
    rect(super.x,super.y,w,h);
    fill(r,g,b);
  }
}

  