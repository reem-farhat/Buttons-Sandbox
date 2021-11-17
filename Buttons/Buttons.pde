//Global Variables 
float buttonX, buttonY, buttonWidth, buttonHeight;
color buttonColour, blue =#39CDF5, purple=#F05CCD, pink=#E59797, reset=pink;

void setup() {
  fullScreen();
  //Population
  buttonX = displayWidth*2/6;
  buttonY = displayHeight*2/6;
  buttonWidth = displayWidth*2/6;
  buttonHeight = displayHeight*2/6;
}//End setup 

void draw() {
  background(pink);
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
