public abstract class Shape implements Movable{
  private int x, y;
  public int r, g, b;
  public int xspeed, yspeed, xdirection, ydirection;
  public Shape(int x, int y) {
    this.x = x;
    this.y = y;
    // random colors and speeds
    r = (int)random(0,256);
    g = (int)random(0,256);
    b = (int)random(0,256);
    xspeed = (int)random(-10,11);
    yspeed = (int)random(-10,11);
    xdirection = 1;
    ydirection = 1;
  }
  public int getX() {
    return x;
  }
  public int getY() {
    return y;
  }
  public abstract void display();
  // bounces the shape once it hits an edge
  public void bounce() {
    if (x < 20 || x > 780) {
      xdirection *= -1;
    }
    if (y < 20 || y > 780) {
      ydirection *= -1;
    }
  }
}