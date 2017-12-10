public class Circle extends Shape implements Movable {
  private int radius;
  public Circle(int x, int y, int r) {
    super(x,y);
    radius = r;
  }
  public int getRadius() {
    return radius;
  }
  public void move() {
    super.x += xspeed*xdirection;
    super.y += yspeed*ydirection;
  }
  public void display() {
    ellipse(super.x, super.y,radius,radius);
    fill(super.r,super.g,super.b);
  }
}
    
    