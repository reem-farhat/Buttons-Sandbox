//Global Variables 
float buttonX, buttonY, buttonWidth, buttonHeight;
color buttonColour, blue =#39CDF5, purple=#F05CCD, black=#000000, reset=black;
int titleX, titleY, titleWidth, titleHeight;
String title = "im blue:)";
PFont titleFont;
color violet = #A2027A, offwhite = #FFFFFF;
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
  titleX = displayWidth*2/6;
  titleY = displayHeight*2/6;
  titleWidth = displayWidth*2/6;
  titleHeight = displayHeight*2/6;
}//End setup 

void draw() {
  background(black);
  //printin(mouseX, mouseY);
    titleFont = createFont ("Bahnschrift", 69);
    rect(titleX, titleY, titleWidth, titleHeight);
    fill(purple);
    textAlign(CENTER, CENTER);
    textFont(titleFont, 33);
    fill(black);
      if ( mouseX >= buttonX && mouseY >= buttonY && mouseX <= buttonX+buttonWidth && mouseY <= buttonY+buttonHeight ) {
    buttonColour = blue;
    
    fill(buttonColour);
    rect(buttonX, buttonY, buttonWidth, buttonHeight);
    fill(reset);
    text(title, titleX, titleY, titleWidth, titleHeight);
  } else {
    buttonColour = purple;
    fill(buttonColour);
    rect(buttonX, buttonY, buttonWidth, buttonHeight);
    fill(reset);
    text(title, titleX, titleY, titleWidth, titleHeight);
  }
}//End draw

void mousePressed() {
  if (mouseX>buttonX && mouseX<buttonX+buttonWidth && mouseY>buttonY && mouseY<buttonY+buttonHeight) exit();
}//End mousePressed

void keyPressed() {
}//End keyPressed
