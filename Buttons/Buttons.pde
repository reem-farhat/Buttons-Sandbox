//Global Variables 
float buttonX, buttonY, buttonWidth, buttonHeight;
color buttonColour, blue =#39CDF5, purple=#F05CCD, white=#FFFFFF, reset=white;

void setup() {
  fullScreen();
  //Population
  buttonX = displayWidth*1/4;
  buttonY = displayHeight*1/3;
  buttonWidth = displayWidth*1/2;
  buttonHeight = displayHeight*1/3;
}//End setup 

void draw() {
  background(white);
  //println(mouseX, mouseY);
  if (mouseX>buttonX && mouseX<buttonX+buttonWidth && mouseY>buttonY && mouseY<buttonY+buttonHeight) { //Button Hoverover
    buttonColour = blue; //Hoverover
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
