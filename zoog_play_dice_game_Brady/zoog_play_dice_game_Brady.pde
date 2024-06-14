int r = (int) random(1, 7);
int rr = (int) random(1, 7);

void setup() {
  size(500, 500);
}
void draw() {
  background(255);
  rectMode(CENTER);
  ellipseMode(CENTER);
  drawZoog(100, 160, 100, color(0, 0, 255));
  drawZoog(100, 420, 100, color(0, 255, 0));
  drawDice(400, 120, 100, r, color(255, 0, 0));
  drawDice(400, 400, 100, rr, color(0, 255, 0));
}
void drawZoog(float zX, float zY, float zH, color c) {
  noFill();
  ellipse(zX, zY-zH, zH, zH);
  fill(c);
  rect(zX, zY, zH/3, zH);
  fill(0);
  ellipse(zX-zH/4, zY-zH, zH/4, zH/4);
  ellipse(zX+zH/4, zY-zH, zH/4, zH/4);
  line(zX-zH/4, zY-15-zH/2, zX+zH/4, zY-15-zH/2);
}
void drawDice(float diceX, float diceY, float diceS, int num, color c) {
  fill(c);
  rect(diceX, diceY, diceS, diceS);
  fill(255);
  if (num==1 || num==3 || num==5) {
    ellipse(diceX, diceY, diceS/6, diceS/6);
  }
  if (num==2 || num==3 || num==4 || num==5 || num==6) {
    ellipse(diceX+diceS/4, diceY-diceS/4, diceS/6, diceS/6);
    ellipse(diceX-diceS/4, diceY+diceS/4, diceS/6, diceS/6);
  }
  if (num==4 || num==5 || num == 6) {
    ellipse(diceX-diceS/4, diceY-diceS/4, diceS/6, diceS/6);
    ellipse(diceX+diceS/4, diceY+diceS/4, diceS/6, diceS/6);
  }
  if (num==6) {
    ellipse(diceX-diceS/4, diceY, diceS/6, diceS/6);
    ellipse(diceX+diceS/4, diceY, diceS/6, diceS/6);  
  }
  if (r>rr){
    println("Zoog 1 wins!");
  }
  if (rr>r){
    println("Zoog 2 wins!");
  }
  if (r==rr){
    println("Tie.");
  }
}
