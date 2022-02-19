public void setup() {
  background(0);
  size(500, 400);
}

public void draw() {
  fill(255);
  text("Sierpiński Triangle Doodle!!", 250, 30);
  text("Drag the mouse to see colorful pattern", 250, 50);
}

public void mouseDragged() {
  //background((int)(Math.random()*200),(int)(Math.random()*200),(int)(Math.random()*200));
  //background(200,200,200);
  fractal((int)(mouseX)-40, (int)(mouseY)+30, 100);
}

public void fractal(int x, int y, int len) {
  if (len <= 20) {
    fill((int)(Math.random()*255),
    (int)(Math.random()*255),(int)(Math.random()*255));
    circle(x, y, len);
  } else {
    fractal(x, y, (len/2));
    fractal(x+(len/2), y, (len/2));
    fractal(x+(len/4), y-(len/2), (len/2));
  }
}
