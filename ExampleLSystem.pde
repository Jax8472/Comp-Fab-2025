// ExampleLSystemDesigns - contains helper methods to create and 
// initialize an LSystem
// to set up parameters and init the LSystem (from the main file)

import java.util.HashMap;

// [TODO]: create your own L-System initialization methods
// and use/test in the setup() method of L1LSystemAssignment file. 
// See example for Square Lsystem below.

LSystem wreath() { 
  // initialize turtle variables
  float moveDist = 30;
  float rotateAngle = 17.5;
  float scaleFactor = 0.9;
  
  // The intial axiom / input string
  String axiom = "-[+F[F+]--F]";
  
  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();
  rules.put('F', "F+[F-F]y");
  rules.put('+', "F-[-F]y[F+[F]-Fy]");
  rules.put('-', "F[-y]F+");
    
  // Create and return the Lsystem
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}

LSystem treeBush() { 
  // initialize turtle variables
  float moveDist = 10;
  float rotateAngle = 22.5;
  float scaleFactor = .2;
  
  // The intial axiom / input string
  String axiom = "F[-F][+F]F[+F][-F]";
  
  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();
  rules.put('F', "-F+[F]");
  rules.put('-', "+F[+F]");
  rules.put('+', "-F[-F]");
    
  // Create and return the Lsystem
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}

probabilisticLSystem random1() { 
  // initialize turtle variables
  float moveDist = 10;
  float rotateAngle = 45;
  float scaleFactor = 0.4;
  
  // The intial axiom / input string
  String axiom = "F[+x]F-y";
  
  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();
  rules.put('F', ">F<");
  rules.put('x', "F[+x]F-y");
  rules.put('y', "F[-y]F+x");
  rules.put('-', "+F[+F[+F]]");
  rules.put('+', "-F[-F[-F]]");

  // Create and return the Lsystem
  return new probabilisticLSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}

LSystem random2() { //defo not right
  // initialize turtle variables
  float moveDist = 10;
  float rotateAngle = 12;
  float scaleFactor = 0.9;
  
  // The intial axiom / input string
  String axiom = "F";
  
  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();
  rules.put('F', "F+F+F+F-F+F");

    
  // Create and return the Lsystem
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}

LSystem leafTree() { 
  // initialize turtle variables
  float moveDist = 10;
  float rotateAngle = 45;
  float scaleFactor = .4;
  
  // The intial axiom / input string
  String axiom = "FF[+x]F-y";
  
  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();
  rules.put('F', ">F<");
  rules.put('x', "F[+x]F-y");
  rules.put('y', "F[-y]F+x");
    
  // Create and return the Lsystem
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}

//my very own l-system take 1
LSystem blackCrow() {
  // initialize turtle variables
  float moveDist = 10;
  float rotateAngle = 90;
  float scaleFactor = 0.5;
  
  // The intial axiom / input string
  String axiom = "FF-F-F+F-F-FF";
  
  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();
  rules.put('F', "FF-F-F+F-F-FF");
  rules.put('-', "FF--FFFF++");
  //rules.put('+', "+FFF+");

    
  // Create and return the Lsystem
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}

// Square Lsystem initialization 
// This method returns an Lsystem object that uses
// The rules and axioms for a square based system
LSystem initSquare() {
  // initialize turtle variables
  float moveDist = 10;
  float rotateAngle = 90;
  float scaleFactor = 1;
  
  // The intial axiom / input string
  String axiom = "F+F+F+F";
  
  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();
  rules.put('F', "F+F-F-FF+F+F-F");
  //for new rules:
  //rules.put('-', "F--F++FF"); THIS IS AN EXAMPLE
    
  // Create and return the Lsystem
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}
