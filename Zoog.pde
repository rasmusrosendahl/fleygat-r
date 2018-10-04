int bodyX = 100;
int bodyY = 100;
int bodyWidth = 20;
int bodyHeight = 100;

int headX = 100;
int headY = 70;
int headDia = 60;

int eye1X = 81;
int eye1Y = 70;
int eye2X = 119;
int eye2Y = 70;
int eyeWidth = 16;
int eyeHeight = 32;

int leg1X = 90;
int leg1Y = 150;
int leg2X = 110;
int leg2Y = 150;

int xSpeed = 1;

void setup() {
  
  //fullScreen();
  size(200,200); // Sets the size of the window
  frameRate(30); // Sets the framerate

}

void draw() {
  
  
  // Draws a background that changes colour accordingly to the mouseX position
  background(mouseX);
  
  // Sets ellipses and rects to CENTER mode
  ellipseMode(CENTER);
  rectMode(CENTER);
  
  // Draws Zoog's body
  stroke(0);
  fill(150);
  rect(bodyX,bodyY,bodyWidth,bodyHeight); // (100, 100, 20, 100)
  
  bodyX = bodyX + xSpeed;
  
  // Draws Zoog's head
  fill(255);
  ellipse(headX,headY,headDia,headDia); // (100, 70, 60, 60)
  
  headX = headX + xSpeed;
  
  // Draws Zoog's eyes
  fill(mouseX,0,mouseY);
  ellipse(eye1X,eye1Y,eyeWidth,eyeHeight); // (81,70,16,32);
  ellipse(eye2X,eye2Y,eyeWidth,eyeHeight); // (119,70,16,32);
  
  eye1X = eye1X + xSpeed;
  eye2X = eye2X + xSpeed;
  
  // Draws Zoog's legs
  stroke(0);
  line(leg1X,leg1Y,leg1X-10,leg1Y+10); // (90,150,80,160);
  line(leg2X,leg2Y,leg2X+10,leg2Y+10); // (110,150,120,160);
  
  leg1X = leg1X + xSpeed;
  leg2X = leg2X + xSpeed;
  
}

void mousePressed() {
  
  println("Take me to your leader");
  
}
