import processing.pdf.*;
import Turtle.*;

Turtle t;

void setup() {
  //canvas set up
  size (700, 700);
  //make tutrle
  t = new Turtle(this); 
  //record tutrle x, y
  noLoop();
}

void draw() {  
  //random walking, right handed variable distance
  for (int i = 0; i < 3000; i ++) {
    //define x and y locally, updating after every move
    float x = t.getX();
    float y = t.getY();
    //check if turtle is at edge, prevent turtle from going off canvas 
    //when it does hit the edge, it 'bounces' off at an angle
    if (x < 0 || x > width){
      println("error edge");
      t.penUp();
      t.back(200);
      t.penDown();
      println(x,y);
    
    }
    if (y <0 || y > height) {
      println("error edge");
      t.penUp();
      t.back(200);
      t.penDown();
      t.right(60);
      println(x,y);
    
    }
    //move tutrle
    t.forward(random(20,80));
    t.right(90);
  }
}

// Handles key press events
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
