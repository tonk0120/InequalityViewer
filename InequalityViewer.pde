//declaring variables needed across whole program
float x;
float y;


//SETUP - instructions here are followed once when program starts
void setup() {
  size(400, 400);
  ellipseMode(CENTER);
  fill(255);
}

//DRAW - instructions here are followed in order, then repeated
void draw() {

  convertToCartesian();
  drawAxes();

  println("x = " + x);
  println("y = " + y);

  if (y >= 5) {
    println("yes");
    ellipse(mouseX, mouseY, 10, 10);
  } else {
    println("no");
  }
}


//OTHER METHODS - ones that I made up to handle tedious things

//method that draws x and y axes
void drawAxes() {
  line(0, 200, 400, 200);
  line(200, 0, 200, 400);
}

//method to turn pixel coordinates into Cartesian coordinates
void convertToCartesian() {
  x = (mouseX - 200)/10.0;
  y = -1*(mouseY - 200)/10.0;
}
