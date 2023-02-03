int x = 50;
int y = 750;
int len = 700;
public void setup() {
  size(800, 800);
  background(255);
}
public void draw() {
  background(255);
  sierpinski(x, y, mouseX);
}
public void sierpinski(int x, int y, int len) {
  fill(len, y/3, x);
  if (len <= 15) {
    triangle(x, y, x+len, y, x+(float)len/2.0, y-(float)((Math.sqrt(3.0))/2.0)*(float)len);
  } else {
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}
