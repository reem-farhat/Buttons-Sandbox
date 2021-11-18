//Global Variables 
float buttonX, buttonY, buttonWidth, buttonHeight;
color buttonColour, blue =#39CDF5, purple=#F05CCD, black=#000000, reset=black;
int titleX, titleY, titleWidth, titleHeight;
String title = "dont click me!";
PFont titleFont;
color violet = #A2027A, white = #FFFFFF;
void setup() {
  fullScreen();
  //
  titleFont = createFont ("Centaur", 55);
  //
  //Population
  buttonX = displayWidth*2/6;
  buttonY = displayHeight*2/6;
  buttonWidth = displayWidth*2/6;
  buttonHeight = displayHeight*2/6;
  titleX = displayWidth*1/4;
  titleY = displayHeight*1/3;
  titleWidth = displayWidth*1/2;
  titleHeight = displayHeight*1/3;
}//End setup 

void draw() {
  background(black);
  //println(mouseX, mouseY);
  if (mouseX>buttonX && mouseX<buttonX+buttonWidth && mouseY>buttonY && mouseY<buttonY+buttonHeight) { //Button Hoverover
    buttonColour = blue; //Hoverover
    fill(black);
    textAlign(CENTER, CENTER);
    textFont(titleFont, 40);
    //Printing Text to Canvas 
    text(title, titleX, titleY, titleWidth, titleHeight);
    fill(white);
  } else {
    buttonColour = purple;
  }//End If Button Colour 
  fill(buttonColour);
  rect(buttonX, buttonY, buttonWidth, buttonHeight);
  fill(reset);
}//End draw

void mousePressed() {
  if (mouseX>buttonX && mouseX<buttonX+buttonWidth && mouseY>buttonY && mouseY<buttonY+buttonHeight) exit();
}//End mousePressed

void keyPressed() {
}//End keyPressed
