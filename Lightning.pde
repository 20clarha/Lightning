
int startX=150;
int startY=0;
int endX=150;
int endY=0;

void setup() {
  size(300, 300);
  strokeWeight(3);
}
void draw() {
  background(100);
  noStroke();
  ellipse(mouseX,mouseY,50,50);
  ellipse(mouseX-25,mouseY,50,50);
  ellipse(mouseX+25,mouseY,50,50);
  stroke(255,255,0);
  while (endY<300) {
    endX=startX + (int)random(-20,20);
    endY=startY + (int)random(8);
    line(startX, startY, endX, endY);
    startX=endX;
    startY=endY;
  }
}
void mousePressed()
{
  startX=mouseX;
  startY=mouseY;
  endX=150;
  endY=0;
}
