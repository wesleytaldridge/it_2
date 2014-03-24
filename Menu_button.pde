class MenuButton {

  // Attributes
  float eSize;
  float ePadding;
  float buttonX;
  float buttonY;
  boolean isPressed;


  // Constructor
  MenuButton(float eSize_, float ePadding_) {
    ellipseMode(CENTER);
    fill(255);
    eSize = eSize_;
    ePadding = ePadding_;
    buttonX = menu.x+eSize/2+ePadding;                //POSITION BUTTON ON SCREN
    buttonY = menu.y+eSize/2+ePadding;
    isPressed = true;
  }


  // Methods
  void display() {


    if (bbutton.isPressed == false && button3.isPressed == false && button4.isPressed == false) {        //if button 2 is TRUE
      fill(255);
      ellipse(buttonX, buttonY, eSize, eSize);
      fill(0);
      ellipse(buttonX, buttonY, 0.7*eSize, 0.7*eSize);
    }
    else {
      fill(255);
      ellipse(buttonX, buttonY, eSize, eSize);
    }

    if (dist(mouseX, mouseY, buttonX, buttonY) < eSize/2 && mousePressed && isPressed == false) {
      isPressed = true;
      bbutton.isPressed = false;
      button3.isPressed = false;
      button4.isPressed = false;
      button_func();
    }
  }

  void button_func() {
    if (isPressed == true) {                                 //IF BUTTON 1 IS PRESSED
      for (int i=0; i < countryList.length; i++) {
        countryList[i].imgSize = (countryList[i].population)/810000;
      }
      countries.controlledSize();
    }
  }
}

