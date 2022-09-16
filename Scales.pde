void setup() { 
  size (1000, 1000);
}
    void draw() { //prints out the thingy for you to see :)
    drawLoop (10, 10);
    drawLoop(-20, -15);
    //frameRate(1);
    noLoop();
  }

  void scale(int x, int y) {
    stroke(0);
    fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    ellipse(x,y,50,50);
    ellipse(x,y,30,30);
    ellipse(x,y,17,17);
    noStroke();
    fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    rect(x+10, y+50, 30, 15);
    ellipse(x+20, y+28, 50, 50);
  }

  void drawLoop(int x, int y) {
    int loop = y;
    for (int i = 0; i < 1100; i += 50) { 
      for (int j = 0; j < 1100; j += 50) {
        scale(x, y); 
        y += 50;
      }
      x += 50; 
      y = loop;
    }
  }
