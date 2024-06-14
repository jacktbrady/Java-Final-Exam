float tempConverter (float f) {
  float c = (f-32)*(5.0/9.0);
  return c;
}

void draw(){
  println(tempConverter (70));
  noLoop();
}
