/** 
 * This program simulates the concept of a black hole in an empty space,
 * where everything that "orbits" it eventually gets drawn closer and closer until
 * it gets sucked up by the black hole and dissapears.
 * This program was made as one of Dr. Nguyen's labs and has been repurposed for 
 * this competition.
 * There are currently a few bugs with this program: easily predictable and monotonic
 * movement, the black hole works more like a square than a circle, and 
 * objects don't gravitate toward the hole. Fixes are coming though.
 * Made entirely by Benjamin Li
 */
ArrayList<Shape> shapes = new ArrayList<Shape>();
void setup () {
  frameRate(144);
  size(800,800);
}
void draw() {
  // white
  background(#FFFFFF);
  // black
  fill(#000000);
  // black hole
  ellipse(400,400,200,200);
  // creates random objects, 0 for circle and 2 for rectangle
  int shape = (int)random(0,2);
  // new shape every second
  if(frameCount % 144 == 0) {
    if(shape == 0) {
      shapes.add(new Circle((int)random(100,701),(int)random(100,701),(int)random(20,70)));
    } else {
      shapes.add(new Rectangle((int)random(100,701),(int)random(100,701),(int)random(20,70),(int)random(20,70),(int)random(0,2)));
    }
  }
  // moves each element in shapes
  for (Shape element : shapes) {
    element.display();
    element.move();
    element.bounce();
  }
  delete();
}

// deletes any objects that touch the black hole
void delete() {
  for(int i=0; i < shapes.size()-1; i++) {
    if (dist(shapes.get(i).getX(), shapes.get(i).getY(), 400, 400) <= 100) {
      shapes.remove(i);
      i--;
    }
  }
}