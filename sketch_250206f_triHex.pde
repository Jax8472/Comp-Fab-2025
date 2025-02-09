import processing.pdf.*;
import Turtle.*;

Turtle t;

void setup() {
 size (700, 700);   
 //make a turtle
 t = new Turtle(this);
 noLoop();
}

void drawTriHex(float leng){
  for (int j = 0; j < 3; j++ ){
      t.right(60);
      t.forward(leng);
      t.left(120);
      t.forward(leng);
      t.left(60);
      t.forward(leng);
      t.left(120);
      t.forward(leng);
  }
}

void draw() {
  float edge = 80;
  double halfHexHeight = (Math.sqrt(3)*edge)/2;
  float hexHalfHeight  = (float) halfHexHeight;
  
  //move row  down
  for (int j = 0; j < 6; j++){
  //ROW TYPE 1
    for(int i = 0; i < 6; i++) {
      t.penUp();
      t.goToPoint(i*hexHalfHeight*2, j*3*edge);
      t.penDown();
      drawTriHex(edge);
    }
  }
  
  double squarerotThree = (Math.sqrt(3));
  float sqrt3 = (float) squarerotThree;
  
  for(int j = 1; j < 6; j += 2) {
    //ROW TYPE 2
    for(int i = 1; i < 13; i +=2) {
      t.penUp();
      t.goToPoint(hexHalfHeight*i, j*hexHalfHeight*sqrt3);
      t.penDown();
      drawTriHex(edge);
    }
  }
  
}

// Handles key press eventss
void keyPressed() { 
  // press 's' to save a svg of your drawing
  if (key == 's') {
    // Make file name with the currrent date/time
    String folder = "output";
    String fileName = "drawing-" + getDateString() + ".pdf";
    beginRecord(PDF, folder + "/" + fileName);
    setup();
    draw();
    endRecord();
    println("Saved to file: " + fileName);
  }
} 

// Generates a date string of the format year_month_day-hour_min_second
String getDateString() {
  String time = str(hour()) + "_" + str(minute()) + "_" + str(second());
  String date = str(year()) + "_" + str(month()) + "_" + str(day());
  return date + "-" + time;
}
